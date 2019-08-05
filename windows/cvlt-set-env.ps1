############################
#CommVault SetEnv - Set cvlt base folder to path
##############################

$cv_base = ""
$bkppath = $env:path

try {
        $cv_base = (Get-ItemProperty -path "HKLM:\SOFTWARE\CommVault Systems\Galaxy\Instance001\Base\" -name "dGALAXYHOME" -ErrorAction stop).dGALAXYHOME
        $cv_base = $cv_base+"\Base\"
}

catch {
        echo "cannot get value from registry"


}

echo "------------------------------------"
echo "Backup Path:"
echo $bkppath
echo "------------------------------------"
echo ""

if (!($cv_base -eq "")) {
            $env:path += ";$cv_base"
            echo "------------------------------------"
            echo "New path:"
            echo $env:path
            echo "------------------------------------"
}









