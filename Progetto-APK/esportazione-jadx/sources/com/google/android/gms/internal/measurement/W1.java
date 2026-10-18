package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class W1 extends X1 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f23028i;

    /* JADX WARN: Illegal instructions before constructor call */
    public W1(p113o3.G g8) {
        Double dValueOf = Double.valueOf(-3.0d);
        this.f23028i = 2;
        super(g8, "measurement.test.double_flag", dValueOf);
    }

    @Override // com.google.android.gms.internal.measurement.X1
    public final /* synthetic */ Object a(Object obj) {
        int i8 = this.f23028i;
        String str = this.f23045b;
        switch (i8) {
            case 0:
                if (obj instanceof Long) {
                    return (Long) obj;
                }
                if (obj instanceof String) {
                    try {
                        return Long.valueOf(Long.parseLong((String) obj));
                    } catch (NumberFormatException unused) {
                    }
                }
                Log.e("PhenotypeFlag", "Invalid long value for " + str + ": " + obj.toString());
                return null;
            case 1:
                if (obj instanceof Boolean) {
                    return (Boolean) obj;
                }
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (F1.f22913b.matcher(str2).matches()) {
                        return Boolean.TRUE;
                    }
                    if (F1.f22914c.matcher(str2).matches()) {
                        return Boolean.FALSE;
                    }
                }
                Log.e("PhenotypeFlag", "Invalid boolean value for " + str + ": " + obj.toString());
                return null;
            case 2:
                if (obj instanceof Double) {
                    return (Double) obj;
                }
                if (obj instanceof Float) {
                    return Double.valueOf(((Float) obj).doubleValue());
                }
                if (obj instanceof String) {
                    try {
                        return Double.valueOf(Double.parseDouble((String) obj));
                    } catch (NumberFormatException unused2) {
                    }
                }
                Log.e("PhenotypeFlag", "Invalid double value for " + str + ": " + obj.toString());
                return null;
            default:
                if (obj instanceof String) {
                    return (String) obj;
                }
                return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ W1(p113o3.G g8, String str, Object obj, int i8) {
        super(g8, str, obj);
        this.f23028i = i8;
    }
}
