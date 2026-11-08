package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.FriendlyObstructionPurpose;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzam extends zzcc {
    private final boolean attached;
    private final zzbb bounds;
    private final String detailedReason;
    private final boolean hidden;
    private final FriendlyObstructionPurpose purpose;
    private final String type;

    private zzam(boolean z7, zzbb zzbbVar, String str, boolean z8, FriendlyObstructionPurpose friendlyObstructionPurpose, String str2) {
        this.attached = z7;
        this.bounds = zzbbVar;
        this.detailedReason = str;
        this.hidden = z8;
        this.purpose = friendlyObstructionPurpose;
        this.type = str2;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcc
    public boolean attached() {
        return this.attached;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcc
    public zzbb bounds() {
        return this.bounds;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcc
    public String detailedReason() {
        return this.detailedReason;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcc) {
            zzcc zzccVar = (zzcc) obj;
            if (this.attached == zzccVar.attached() && this.bounds.equals(zzccVar.bounds()) && ((str = this.detailedReason) != null ? str.equals(zzccVar.detailedReason()) : zzccVar.detailedReason() == null) && this.hidden == zzccVar.hidden() && this.purpose.equals(zzccVar.purpose()) && this.type.equals(zzccVar.type())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (((true != this.attached ? 1237 : 1231) ^ 1000003) * 1000003) ^ this.bounds.hashCode();
        String str = this.detailedReason;
        return (((((((iHashCode * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ (true != this.hidden ? 1237 : 1231)) * 1000003) ^ this.purpose.hashCode()) * 1000003) ^ this.type.hashCode();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcc
    public boolean hidden() {
        return this.hidden;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcc
    public FriendlyObstructionPurpose purpose() {
        return this.purpose;
    }

    public String toString() {
        FriendlyObstructionPurpose friendlyObstructionPurpose = this.purpose;
        String strValueOf = String.valueOf(this.bounds);
        String strValueOf2 = String.valueOf(friendlyObstructionPurpose);
        StringBuilder sb = new StringBuilder("ObstructionData{attached=");
        sb.append(this.attached);
        sb.append(", bounds=");
        sb.append(strValueOf);
        sb.append(", detailedReason=");
        sb.append(this.detailedReason);
        sb.append(", hidden=");
        sb.append(this.hidden);
        sb.append(", purpose=");
        sb.append(strValueOf2);
        sb.append(", type=");
        return r.j(sb, this.type, "}");
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzcc
    public String type() {
        return this.type;
    }
}
