package com.google.ads.interactivemedia.v3.impl.data;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzq extends zzbb {
    private final int height;
    private final int left;
    private final int top;
    private final int width;

    private zzq(int i8, int i9, int i10, int i11) {
        this.left = i8;
        this.top = i9;
        this.height = i10;
        this.width = i11;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbb) {
            zzbb zzbbVar = (zzbb) obj;
            if (this.left == zzbbVar.left() && this.top == zzbbVar.top() && this.height == zzbbVar.height() && this.width == zzbbVar.width()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.left ^ 1000003) * 1000003) ^ this.top) * 1000003) ^ this.height) * 1000003) ^ this.width;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbb
    public int height() {
        return this.height;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbb
    public int left() {
        return this.left;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BoundingRectData{left=");
        sb.append(this.left);
        sb.append(", top=");
        sb.append(this.top);
        sb.append(", height=");
        sb.append(this.height);
        sb.append(", width=");
        return r.h(sb, this.width, "}");
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbb
    public int top() {
        return this.top;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzbb
    public int width() {
        return this.width;
    }
}
