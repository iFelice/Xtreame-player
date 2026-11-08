package com.google.ads.interactivemedia.v3.impl.data;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzae extends zzbw {
    private final String message;
    private final String name;
    private final String stackTrace;

    public zzae(String str, String str2, String str3) {
        this.name = str;
        this.message = str2;
        this.stackTrace = str3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbw) {
            zzbw zzbwVar = (zzbw) obj;
            String str = this.name;
            if (str != null ? str.equals(zzbwVar.name()) : zzbwVar.name() == null) {
                String str2 = this.message;
                if (str2 != null ? str2.equals(zzbwVar.message()) : zzbwVar.message() == null) {
                    String str3 = this.stackTrace;
                    if (str3 != null ? str3.equals(zzbwVar.stackTrace()) : zzbwVar.stackTrace() == null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.name;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.message;
        int iHashCode2 = str2 == null ? 0 : str2.hashCode();
        int i8 = iHashCode ^ 1000003;
        String str3 = this.stackTrace;
        return (((i8 * 1000003) ^ iHashCode2) * 1000003) ^ (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbw
    public String message() {
        return this.message;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbw
    public String name() {
        return this.name;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbw
    public String stackTrace() {
        return this.stackTrace;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LoggableException{name=");
        sb.append(this.name);
        sb.append(", message=");
        sb.append(this.message);
        sb.append(", stackTrace=");
        return r.j(sb, this.stackTrace, "}");
    }
}
