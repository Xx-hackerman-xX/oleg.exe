Add-Type -AssemblyName 'System.Windows.Forms'
$file = (get-item "C:\Users\talldavid\Desktop\oleg.exe raw.png")
#$file = (get-item "C:\#\# keepy\oleg.exe.png")
$img = [System.Drawing.Image]::Fromfile((get-item $file))

[System.Windows.Forms.Application]::EnableVisualStyles()
$form = new-object Windows.Forms.Form
$form.Text = "OLEG.exe"
$form.Width = $img.Size.Width;
$form.Height =  $img.Size.Height;
$form.FormBorderStyle  = "FixedDialog"
#$form.FormBorderStyle  = "None"
$form.Cursor = [System.Windows.Forms.Cursors]::Hand 
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Width =  $img.Size.Width;
$pictureBox.Height =  $img.Size.Height;

$pictureBox.Image = $img;
$form.controls.add($pictureBox)
$form.Add_Shown( { $form.Activate() } )
$form.ShowDialog()
#$form.Show();