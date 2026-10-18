package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import java.util.Map;
import okhttp3.HttpUrl;
import pe.hf.black20.R;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Rb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0902Rb extends C2218x {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Map f16264J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Activity f16265K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f16266L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final long f16267M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final long f16268N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final String f16269O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final String f16270P;

    public C0902Rb(InterfaceC0715Ef interfaceC0715Ef, Map map) {
        long j8;
        super(14, interfaceC0715Ef, "createCalendarEvent");
        this.f16264J = map;
        this.f16265K = interfaceC0715Ef.zzi();
        this.f16266L = q("description");
        this.f16269O = q("summary");
        String str = (String) map.get("start_ticks");
        long j9 = -1;
        if (str == null) {
            j8 = -1;
        } else {
            try {
                j8 = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                j8 = -1;
            }
        }
        this.f16267M = j8;
        String str2 = (String) this.f16264J.get("end_ticks");
        if (str2 != null) {
            try {
                j9 = Long.parseLong(str2);
            } catch (NumberFormatException unused2) {
            }
        }
        this.f16268N = j9;
        this.f16270P = q("location");
    }

    public final String q(String str) {
        Map map = this.f16264J;
        return TextUtils.isEmpty((CharSequence) map.get(str)) ? HttpUrl.FRAGMENT_ENCODE_SET : (String) map.get(str);
    }

    @Override // com.google.android.gms.internal.ads.C2218x, com.google.android.gms.internal.ads.L8
    public final void zzc() {
        Activity activity = this.f16265K;
        if (activity == null) {
            l("Activity context is not available.");
            return;
        }
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        Intent type = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event");
        com.bumptech.glide.c.i(type, "Intent can not be null");
        if (!(!activity.getPackageManager().queryIntentActivities(type, 0).isEmpty())) {
            l("This feature is not available on the device.");
            return;
        }
        AlertDialog.Builder builderI = p113o3.O.i(activity);
        Resources resourcesB = lVar.f25987g.b();
        builderI.setTitle(resourcesB != null ? resourcesB.getString(R.string.s5) : "Create calendar event");
        builderI.setMessage(resourcesB != null ? resourcesB.getString(R.string.s6) : "Allow Ad to create a calendar event?");
        builderI.setPositiveButton(resourcesB != null ? resourcesB.getString(R.string.s3) : "Accept", new DialogInterfaceOnClickListenerC0888Qb(this, 0));
        builderI.setNegativeButton(resourcesB != null ? resourcesB.getString(R.string.s4) : "Decline", new DialogInterfaceOnClickListenerC0888Qb(this, 1));
        builderI.create().show();
    }
}
