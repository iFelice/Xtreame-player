package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2303yh implements InterfaceC0859Oa {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f22045G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final E5 f22046H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final PowerManager f22047I;

    public C2303yh(Context context, E5 e8) {
        this.f22045G = context;
        this.f22046H = e8;
        this.f22047I = (PowerManager) context.getSystemService("power");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x00ac  */
    @Override // com.google.android.gms.internal.ads.InterfaceC0859Oa
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final JSONObject zzb(C0657Ah c0657Ah) throws JSONException {
        float f8;
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        F5 f9 = c0657Ah.f12025e;
        if (f9 == null) {
            jSONObject = new JSONObject();
        } else {
            E5 e8 = this.f22046H;
            if (e8.f12937b == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            JSONObject jSONObject3 = new JSONObject();
            JSONObject jSONObjectPut = jSONObject3.put("afmaVersion", e8.f12939d).put("activeViewJSON", e8.f12937b).put("timestamp", c0657Ah.f12023c).put("adFormat", e8.f12936a).put("hashCode", e8.f12938c).put("isMraid", false).put("isStopped", false).put("isPaused", c0657Ah.f12022b).put("isNative", e8.f12940e).put("isScreenOn", this.f22047I.isInteractive());
            p083k3.l lVar = p083k3.l.f25980A;
            JSONObject jSONObjectPut2 = jSONObjectPut.put("appMuted", lVar.f25988h.d()).put("appVolume", lVar.f25988h.a());
            Context context = this.f22045G;
            AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
            if (audioManager == null) {
                f8 = 0.0f;
            } else {
                int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                int streamVolume = audioManager.getStreamVolume(3);
                if (streamMaxVolume != 0) {
                    f8 = streamVolume / streamMaxVolume;
                } else {
                    f8 = 0.0f;
                }
            }
            jSONObjectPut2.put("deviceVolume", f8);
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            JSONObject jSONObjectPut3 = jSONObject3.put("windowVisibility", f9.f13313b).put("isAttachedToWindow", f9.f13312a);
            JSONObject jSONObject4 = new JSONObject();
            Rect rect2 = f9.f13314c;
            JSONObject jSONObjectPut4 = jSONObjectPut3.put("viewBox", jSONObject4.put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
            JSONObject jSONObject5 = new JSONObject();
            Rect rect3 = f9.f13315d;
            JSONObject jSONObjectPut5 = jSONObjectPut4.put("adBox", jSONObject5.put("top", rect3.top).put("bottom", rect3.bottom).put("left", rect3.left).put("right", rect3.right));
            JSONObject jSONObject6 = new JSONObject();
            Rect rect4 = f9.f13316e;
            JSONObject jSONObjectPut6 = jSONObjectPut5.put("globalVisibleBox", jSONObject6.put("top", rect4.top).put("bottom", rect4.bottom).put("left", rect4.left).put("right", rect4.right)).put("globalVisibleBoxVisible", f9.f13317f);
            JSONObject jSONObject7 = new JSONObject();
            Rect rect5 = f9.f13318g;
            JSONObject jSONObjectPut7 = jSONObjectPut6.put("localVisibleBox", jSONObject7.put("top", rect5.top).put("bottom", rect5.bottom).put("left", rect5.left).put("right", rect5.right)).put("localVisibleBoxVisible", f9.f13319h);
            JSONObject jSONObject8 = new JSONObject();
            Rect rect6 = f9.f13320i;
            jSONObjectPut7.put("hitBox", jSONObject8.put("top", rect6.top).put("bottom", rect6.bottom).put("left", rect6.left).put("right", rect6.right)).put("screenDensity", displayMetrics.density);
            jSONObject3.put("isVisible", c0657Ah.f12021a);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15850i1)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = f9.f13322k;
                if (list != null) {
                    for (Rect rect7 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect7.top).put("bottom", rect7.bottom).put("left", rect7.left).put("right", rect7.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(c0657Ah.f12024d)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
