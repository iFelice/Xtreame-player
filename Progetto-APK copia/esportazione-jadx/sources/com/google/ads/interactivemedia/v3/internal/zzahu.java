package com.google.ads.interactivemedia.v3.internal;

import java.lang.reflect.Field;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzahu {
    public static Object zza(Field field, Object obj) {
        try {
            Objects.requireNonNull(field, "field");
            return field.get(obj);
        } catch (IllegalAccessException e8) {
            throw new IllegalArgumentException(e8);
        }
    }
}
