package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class J7 extends K7 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f14125e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ J7(String str, Object obj, Object obj2, int i8) {
        super(1, str, obj, obj2);
        this.f14125e = i8;
    }

    @Override // com.google.android.gms.internal.ads.K7
    public final Object a(JSONObject jSONObject) {
        int i8 = this.f14125e;
        String str = this.f14304b;
        switch (i8) {
            case 0:
                return Boolean.valueOf(jSONObject.optBoolean(str, ((Boolean) e()).booleanValue()));
            case 1:
                return Integer.valueOf(jSONObject.optInt(str, ((Integer) e()).intValue()));
            case 2:
                return Long.valueOf(jSONObject.optLong(str, ((Long) e()).longValue()));
            case 3:
                return Float.valueOf((float) jSONObject.optDouble(str, ((Float) e()).floatValue()));
            default:
                return jSONObject.optString(str, (String) e());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J7(int i8, String str, Boolean bool, Boolean bool2) {
        super(i8, str, bool, bool2);
        this.f14125e = 0;
    }
}
