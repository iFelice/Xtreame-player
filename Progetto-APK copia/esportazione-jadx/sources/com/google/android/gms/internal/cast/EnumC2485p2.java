package com.google.android.gms.internal.cast;

import java.io.Serializable;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.p2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC2485p2 {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, HttpUrl.FRAGMENT_ENCODE_SET),
    BYTE_STRING(Z1.class, Z1.f22595H),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f22779G;

    EnumC2485p2(Class cls, Serializable serializable) {
    }
}
