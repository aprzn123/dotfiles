#!/usr/bin/python3

import os

if __name__ == "__main__":
    cfg_dir = os.getenv("XDG_CONFIG_HOME", os.path.expanduser('~/.config/'))
    cfgs = os.listdir(cfg_dir)
    os.chdir('./configs/')
    for filename in os.listdir():
        print(filename, end=':\n')
        if filename in cfgs and os.path.islink(f'{cfg_dir}/{filename}'):
            print('  previously linked! unlinking...')
            os.remove(f'{cfg_dir}/{filename}')
        elif filename in cfgs:
            print('  file already exists! backing up...');
            os.rename(f'{cfg_dir}/{filename}', f'{cfg_dir}/{filename}.apr_bak')
        print('  linking...')
        os.symlink(f'{os.getcwd()}/{filename}', f'{cfg_dir}/{filename}')
        
