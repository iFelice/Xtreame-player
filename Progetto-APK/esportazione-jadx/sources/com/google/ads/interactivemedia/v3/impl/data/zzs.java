package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: classes.dex */
final class zzs extends zzbf {
    private final double end;
    private final boolean played;
    private final double start;

    public zzs(double d6, double d8, boolean z7) {
        this.start = d6;
        this.end = d8;
        this.played = z7;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbf
    public double end() {
        return this.end;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbf) {
            zzbf zzbfVar = (zzbf) obj;
            if (Double.doubleToLongBits(this.start) == Double.doubleToLongBits(zzbfVar.start()) && Double.doubleToLongBits(this.end) == Double.doubleToLongBits(zzbfVar.end()) && this.played == zzbfVar.played()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long jDoubleToLongBits = (Double.doubleToLongBits(this.start) >>> 32) ^ Double.doubleToLongBits(this.start);
        return ((((int) ((Double.doubleToLongBits(this.end) >>> 32) ^ Double.doubleToLongBits(this.end))) ^ ((((int) jDoubleToLongBits) ^ 1000003) * 1000003)) * 1000003) ^ (true != this.played ? 1237 : 1231);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbf
    public boolean played() {
        return this.played;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbf
    public double start() {
        return this.start;
    }

    public String toString() {
        return "CuePointData{start=" + this.start + ", end=" + this.end + ", played=" + this.played + "}";
    }
}
