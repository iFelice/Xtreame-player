package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class O3 extends AbstractC2238xJ {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ int f15130O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O3(String str, int i8) {
        super(str);
        this.f15130O = i8;
        if (i8 != 1) {
        } else {
            super("eof ");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2238xJ
    public final void b(ByteBuffer byteBuffer) {
        switch (this.f15130O) {
            case 0:
                byteBuffer.position(byteBuffer.remaining() + byteBuffer.position());
                break;
        }
    }
}
