<?php

namespace App\Http\Controllers;

use App\Models\PengajuanModel;

class Testing extends Controller
{

    public function newformatrkat()
    {
        // return response()->json(
        //     PengajuanModel::select(
        //         'pengajuan.id_pengajuan',
        //         'pengajuan.kode_rkat',
        //         'pengajuan.tanggal',
        //         'pengajuan.biaya_program',
        //         'pengajuan.biaya_disetujui',
        //         'pengajuan.bank',
        //         'pengajuan.no_rek',
        //         'pengajuan.atn',
        //         'pengajuan.lpj_keuangan',
        //         'pengajuan.lpj_kegiatan',
        //     )
        //         ->with(['pencairan', 'rkat' => function ($query) {
        //             $query->select('id_rkat', 'kode_rkat', 'nama_program');
        //         }])
        //         ->orderBy('pengajuan.id_pengajuan', 'DESC')
        //         ->get()
        // );
    }

    public function word()
    {
        // $phpWord = new \PhpOffice\PhpWord\PhpWord();

        // $section = $phpWord->addSection();
        // $phpWord->addTableStyle('myTable', [
        //     'borderColor' => '006699',
        //     'borderSize'  => 6,
        //     'cellMargin'  => 50,
        //     'width'       => 100,
        // ], ['bgColor' => '66BBFF']);
        // $table = $section->addTable('myTable');
        // $table->addRow();
        // $table->addCell(2000)->addText('Row 1, Cell 1');
        // $table->addCell(2000)->addText('Row 1, Cell 2');
        // $table->addCell(2000)->addText('Row 1, Cell 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque, asperiores.');
        // $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
        // $objWriter->save('helloWorld.docx');

        // $saveDocPath = base_path('/public/helloWorld.docx');
        // // Load temporarily create word file
        // $Content = \PhpOffice\PhpWord\IOFactory::load($saveDocPath);

        // //Save it into PDF
        // $savePdfPath = base_path('/public/' . uniqid(date('YmdHis'), true) . '.pdf');

        // /*@ If already PDF exists then delete it */
        // if (file_exists($savePdfPath)) {
        //     unlink($savePdfPath);
        // }

        // //Save it into PDF
        // $PDFWriter = \PhpOffice\PhpWord\IOFactory::createWriter($Content, 'PDF');
        // $PDFWriter->save($savePdfPath);
        // echo 'File has been successfully converted';

        // /*@ Remove temporarily created word file */
        // if (file_exists($saveDocPath)) {
        //     unlink($saveDocPath);
        // }
        /* Set the PDF Engine Renderer Path */
        $domPdfPath = base_path('vendor/dompdf/dompdf');

        \PhpOffice\PhpWord\Settings::setPdfRendererPath($domPdfPath);
        \PhpOffice\PhpWord\Settings::setPdfRendererName('DomPDF');

        /*@ Reading doc file */
        $template = new \PhpOffice\PhpWord\TemplateProcessor($this->public_path('helloWorld.docx'));

        /*@ Replacing variables in doc file */
        $template->setValue('date', date('d-m-Y'));
        $template->setValue('title', "Hello World");
        $template->setValue('firstname', 'Ardiansyah ');
        // $template->setValue('lastname', 'Coder');

        $template->setImageValue('lastname', $this->public_path('qrcode/qr_code.png'));

         
        $template->setComplexValue('table', "AJJAJAJAJ");



        // /*@ Save Temporary Word File With New Name */
        $saveDocPath = $this->public_path('new-result.docx');
        $template->saveAs($saveDocPath);

        // Load temporarily create word file
        $Content = \PhpOffice\PhpWord\IOFactory::load($saveDocPath);

        //Save it into PDF
        $savePdfPath = $this->public_path(uniqid(date('YmdHis'), true) . '.pdf');

        /*@ If already PDF exists then delete it */
        if (file_exists($savePdfPath)) {
            unlink($savePdfPath);
        }

        //Save it into PDF
        $PDFWriter = \PhpOffice\PhpWord\IOFactory::createWriter($Content, 'PDF');
        $PDFWriter->save($savePdfPath);
        echo 'File has been successfully converted';

        /*@ Remove temporarily created word file */
        if (file_exists($saveDocPath)) {
            unlink($saveDocPath);
        }
    }

    public function public_path($params)
    {
        return base_path('public/' . $params);
    }
}
