package com.google.ads.interactivemedia.v3.impl.data;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzav extends zzcj {
    private final long currentTime;
    private final long duration;
    private final String timeUnit;

    public zzav(long j8, long j9, String str) {
        this.currentTime = j8;
        this.duration = j9;
        if (str == null) {
            throw new NullPointerException("Null timeUnit");
        }
        this.timeUnit = str;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcj
    public long currentTime() {
        return this.currentTime;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcj
    public long duration() {
        return this.duration;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcj) {
            zzcj zzcjVar = (zzcj) obj;
            if (this.currentTime == zzcjVar.currentTime() && this.duration == zzcjVar.duration() && this.timeUnit.equals(zzcjVar.timeUnit())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j8 = this.duration;
        long j9 = this.currentTime;
        return ((((((int) (j9 ^ (j9 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ this.timeUnit.hashCode();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcj
    public String timeUnit() {
        return this.timeUnit;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TimeUpdateData{currentTime=");
        sb.append(this.currentTime);
        sb.append(", duration=");
        sb.append(this.duration);
        sb.append(", timeUnit=");
        return r.j(sb, this.timeUnit, "}");
    }
}
