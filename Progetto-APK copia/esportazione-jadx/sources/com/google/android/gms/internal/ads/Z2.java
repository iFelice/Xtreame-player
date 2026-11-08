package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import org.videolan.libvlc.interfaces.IMediaList;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17711c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f17712d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f17713e;

    public Z2(int i8, String str, int i9, ArrayList arrayList, byte[] bArr) {
        this.f17709a = i8;
        this.f17711c = str;
        this.f17710b = i9;
        this.f17712d = arrayList == null ? Collections.emptyList() : Collections.unmodifiableList(arrayList);
        this.f17713e = bArr;
    }

    public final int a() {
        int i8 = this.f17710b;
        if (i8 == 2) {
            return 2048;
        }
        if (i8 != 3) {
            return 0;
        }
        return IMediaList.Event.ItemAdded;
    }

    public final JSONObject b() throws JSONException {
        String strE;
        String strEncodeToString;
        Object obj = this.f17713e;
        Object obj2 = this.f17712d;
        JSONObject jSONObject = new JSONObject();
        try {
            String str = ((ApplicationInfo) obj).packageName;
            p113o3.J j8 = p113o3.O.f27924l;
            Context context = Q3.c.a((Context) obj2).f23010G;
            jSONObject.put("name", context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(str, 0)));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        jSONObject.put("packageName", ((ApplicationInfo) obj).packageName);
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        Drawable applicationIcon = null;
        try {
            strE = p113o3.O.E((Context) obj2);
        } catch (RemoteException unused2) {
            strE = null;
        }
        jSONObject.put("adMobAppId", strE);
        boolean zIsEmpty = this.f17711c.isEmpty();
        int i8 = this.f17710b;
        int i9 = this.f17709a;
        if (zIsEmpty) {
            try {
                com.google.android.gms.internal.measurement.U1 u1A = Q3.c.a((Context) obj2);
                ApplicationInfo applicationInfo = u1A.f23010G.getPackageManager().getApplicationInfo(((ApplicationInfo) obj).packageName, 0);
                u1A.f23010G.getPackageManager().getApplicationLabel(applicationInfo);
                applicationIcon = u1A.f23010G.getPackageManager().getApplicationIcon(applicationInfo);
            } catch (PackageManager.NameNotFoundException unused3) {
            }
            if (applicationIcon == null) {
                strEncodeToString = HttpUrl.FRAGMENT_ENCODE_SET;
            } else {
                applicationIcon.setBounds(0, 0, i9, i8);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i9, i8, Bitmap.Config.ARGB_8888);
                applicationIcon.draw(new Canvas(bitmapCreateBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.f17711c = strEncodeToString;
        }
        if (!this.f17711c.isEmpty()) {
            jSONObject.put("icon", this.f17711c);
            jSONObject.put("iconWidthPx", i9);
            jSONObject.put("iconHeightPx", i8);
        }
        return jSONObject;
    }

    public Z2(Context context) {
        this.f17711c = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f17712d = context;
        this.f17713e = context.getApplicationInfo();
        J7 j8 = Q7.u8;
        C3099q c3099q = C3099q.f26624d;
        this.f17709a = ((Integer) c3099q.f26627c.a(j8)).intValue();
        this.f17710b = ((Integer) c3099q.f26627c.a(Q7.v8)).intValue();
    }
}
