package com.google.ads.interactivemedia.v3.impl.data;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzap extends zzcg {
    private final int major;
    private final int micro;
    private final int minor;

    public zzap(int i8, int i9, int i10) {
        this.major = i8;
        this.minor = i9;
        this.micro = i10;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcg) {
            zzcg zzcgVar = (zzcg) obj;
            if (this.major == zzcgVar.major() && this.minor == zzcgVar.minor() && this.micro == zzcgVar.micro()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.major ^ 1000003) * 1000003) ^ this.minor) * 1000003) ^ this.micro;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcg
    public int major() {
        return this.major;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcg
    public int micro() {
        return this.micro;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcg
    public int minor() {
        return this.minor;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SecureSignalsVersionData{major=");
        sb.append(this.major);
        sb.append(", minor=");
        sb.append(this.minor);
        sb.append(", micro=");
        return r.h(sb, this.micro, "}");
    }
}
