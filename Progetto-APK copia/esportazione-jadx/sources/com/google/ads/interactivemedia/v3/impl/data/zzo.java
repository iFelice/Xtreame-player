package com.google.ads.interactivemedia.v3.impl.data;

/* JADX INFO: loaded from: classes.dex */
final class zzo extends zzba {
    private int height;
    private int left;
    private byte set$0;
    private int top;
    private int width;

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzba
    public zzbb build() {
        if (this.set$0 == 15) {
            return new zzq(this.left, this.top, this.height, this.width);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.set$0 & 1) == 0) {
            sb.append(" left");
        }
        if ((this.set$0 & 2) == 0) {
            sb.append(" top");
        }
        if ((this.set$0 & 4) == 0) {
            sb.append(" height");
        }
        if ((this.set$0 & 8) == 0) {
            sb.append(" width");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzba
    public zzba height(int i8) {
        this.height = i8;
        this.set$0 = (byte) (this.set$0 | 4);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzba
    public zzba left(int i8) {
        this.left = i8;
        this.set$0 = (byte) (this.set$0 | 1);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzba
    public zzba top(int i8) {
        this.top = i8;
        this.set$0 = (byte) (this.set$0 | 2);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.zzba
    public zzba width(int i8) {
        this.width = i8;
        this.set$0 = (byte) (this.set$0 | 8);
        return this;
    }
}
