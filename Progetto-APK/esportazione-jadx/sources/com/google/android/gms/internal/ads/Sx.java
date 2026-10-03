package com.google.android.gms.internal.ads;

import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class Sx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WindowManager f16559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f16560b = {"x", "y", "width", "height"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static float f16561c = Resources.getSystem().getDisplayMetrics().density;

    public static JSONObject a(int i8, int i9, int i10, int i11) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i8 / f16561c);
            jSONObject.put("y", i9 / f16561c);
            jSONObject.put("width", i10 / f16561c);
            jSONObject.put("height", i11 / f16561c);
        } catch (JSONException e8) {
            p113o3.r.s("Error with creating viewStateObject", e8);
        }
        return jSONObject;
    }

    public static void b(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException e8) {
            e8.printStackTrace();
        }
    }

    public static void c(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e8) {
            p113o3.r.s("JSONException during JSONObject.put for name [" + str + "]", e8);
        }
    }

    public static void d(JSONObject jSONObject) {
        float f8;
        float f9;
        if (f16559a != null) {
            Point point = new Point(0, 0);
            f16559a.getDefaultDisplay().getRealSize(point);
            float f10 = point.x;
            float f11 = f16561c;
            f8 = f10 / f11;
            f9 = point.y / f11;
        } else {
            f8 = 0.0f;
            f9 = 0.0f;
        }
        try {
            jSONObject.put("width", f8);
            jSONObject.put("height", f9);
        } catch (JSONException e8) {
            e8.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d9 A[LOOP:1: B:52:0x00c5->B:56:0x00d9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x00dd A[SYNTHETIC] */
    public static boolean e(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArrayOptJSONArray2;
        int i8;
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject != null && jSONObject2 != null) {
            String[] strArr = f16560b;
            for (int i9 = 0; i9 < 4; i9++) {
                String str = strArr[i9];
                if (jSONObject.optDouble(str) == jSONObject2.optDouble(str)) {
                }
            }
            if (jSONObject.optString("adSessionId", HttpUrl.FRAGMENT_ENCODE_SET).equals(jSONObject2.optString("adSessionId", HttpUrl.FRAGMENT_ENCODE_SET)) && Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice"))) && Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")))) {
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("isFriendlyObstructionFor");
                JSONArray jSONArrayOptJSONArray4 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
                if (jSONArrayOptJSONArray3 == null && jSONArrayOptJSONArray4 == null) {
                    jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
                    jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
                    if (jSONArrayOptJSONArray == null) {
                    }
                    if (jSONArrayOptJSONArray != null) {
                        for (i8 = 0; i8 < jSONArrayOptJSONArray.length(); i8++) {
                            if (e(jSONArrayOptJSONArray.optJSONObject(i8), jSONArrayOptJSONArray2.optJSONObject(i8))) {
                            }
                        }
                        return true;
                    }
                    while (i8 < jSONArrayOptJSONArray.length()) {
                        if (e(jSONArrayOptJSONArray.optJSONObject(i8), jSONArrayOptJSONArray2.optJSONObject(i8))) {
                        }
                    }
                    return true;
                }
                if ((jSONArrayOptJSONArray3 == null && jSONArrayOptJSONArray4 == null) || (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray3.length() == jSONArrayOptJSONArray4.length())) {
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray3.length(); i10++) {
                        if (jSONArrayOptJSONArray3.optString(i10, HttpUrl.FRAGMENT_ENCODE_SET).equals(jSONArrayOptJSONArray4.optString(i10, HttpUrl.FRAGMENT_ENCODE_SET))) {
                        }
                    }
                    jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
                    jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray2 != null) {
                        if ((jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 == null) || (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray.length() == jSONArrayOptJSONArray2.length())) {
                            while (i8 < jSONArrayOptJSONArray.length()) {
                                if (e(jSONArrayOptJSONArray.optJSONObject(i8), jSONArrayOptJSONArray2.optJSONObject(i8))) {
                                }
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }
}
