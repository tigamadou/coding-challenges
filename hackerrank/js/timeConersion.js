const timeConversion = (time) => {
    const PM = 'PM';
    const AM= 'AM';
    const arr = time.split(':');
    let h = Number(arr[0]);
    let m = Number(arr[1]);
    const s = Number(arr[2].slice(0,2));
    const meridian = arr[2].slice(-2);
    const isPm = meridian === PM;
    const isAm = meridian === AM;
    const isNoon = h === 12;
    if(isPm){
        !isNoon ? h = 12 + Number(h) : h = h;
    }
    
    if(isAm){
        isNoon ? h = 0 : h = h;
    }
    
    const _toDecString = (n) => {
        return n < 10 ? '0'+n: String(n);
    }
    
    return [_toDecString(h), _toDecString(m), _toDecString(s)].join(':');
}