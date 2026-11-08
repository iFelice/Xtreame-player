package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2025tE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NG f21054a = NG.a(new byte[0]);

    public static final NG a(int i8) {
        return NG.a(ByteBuffer.allocate(5).put((byte) 0).putInt(i8).array());
    }

    public static final NG b(int i8) {
        return NG.a(ByteBuffer.allocate(5).put((byte) 1).putInt(i8).array());
    }
}
