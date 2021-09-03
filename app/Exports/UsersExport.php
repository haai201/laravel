<?php

namespace App\Exports;

use App\User;
use Maatwebsite\Excel\Concerns\WithStyles;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class UsersExport implements FromCollection, WithHeadings, WithMapping,WithStyles
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return User::all();
    }
    
    public function headings(): array {
      return [
        'STT',
        'Tên',
        'Email',
        
      ];
    }
    public function map($user): array
    {
      return [
        $user->id,
          $user->name,
          $user->email,
      ];
    }
    public function styles(Worksheet $sheet)
    {
        return [
            // Định dạng toàn bộ hàng đầu tiên với font chữ được in dậm
            1    => ['font' => ['bold' => true]],

            // Định dạng giá trị tại ô B2 có font là in nghiêng
            'B' => ['font' => ['italic' => true]],

            // Định dạng font-size cho toàn bộ cột C
            'C'  => ['font' => ['size' => 16]],
        ];
    }
}
