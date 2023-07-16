function Build-Name
{
    $names = @(
        'beautiful',
        'witty',
        'wicked',
        'confusing',
        'rich',
        'new',
        'strange',
        'rocky',
        'circular',
        'helpful',
        'competent ',
        'smelly',
        'stable',
        'grumpy',
        'devoted',
        'smart',
        'muscular',
        'graceful',
        'scary',
        'safe',
        'wooden',
        'sleepy',
        'tardy',
        'hungry',
        'strange',
        'hopeful',
        'proud',
        'new',
        'dainty',
        'royal',
        'arrogant',
        'round',
        'efficient',
        'youthful',
        'cumbersome',
        'fickle',
        'mild',
        'expensive',
        'small',
        'rude',
        'generous',
        'courageous',
        'zany',
        'thin',
        'round',
        'oval',
        'dark',
        'hot',
        'modern',
        'petite',
        'weary',
        'old-fashioned',
        'run-of-the-mill',
        'middle-of-the-road',
        'heavy-duty',
        'happy-go-lucky',
        'see-through',
        'easy-going',
        'big-time',
        'long-term',
        'better',
        'bigger',
        'older',
        'angrier',
        'prettier',
        'smarter',
        'kinder',
        'more determined',
        'more interesting');

    $val = Get-Random -Maximum $names.Length -Minimum 0;
    return $names[$val] + ' ' + 'Crab';
}


pac auth list
$val = Read-Host -Prompt "Select an auth index or select 0 to create a new one";

switch($val){
    0{pac auth create}
    Default{pac auth select --index $val}
}

$name = Build-Name;
pac admin create --name $name --region europe --currency GBP --type Trial | Out-File .\trial-env.txt

