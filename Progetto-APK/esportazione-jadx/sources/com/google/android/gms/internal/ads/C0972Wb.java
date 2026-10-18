package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import java.util.Map;
import pe.hf.black20.R;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Wb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0972Wb extends C2218x {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Map f17248J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Activity f17249K;

    public C0972Wb(InterfaceC0715Ef interfaceC0715Ef, Map map) {
        super(14, interfaceC0715Ef, "storePicture");
        this.f17248J = map;
        this.f17249K = interfaceC0715Ef.zzi();
    }

    @Override // com.google.android.gms.internal.ads.C2218x, com.google.android.gms.internal.ads.D
    public final void zzb() {
        Activity activity = this.f17249K;
        if (activity == null) {
            l("Activity context is not available");
            return;
        }
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        if (!((Boolean) p113o3.r.l(activity, new H7(0))).booleanValue() || Q3.c.a(activity).f23010G.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            l("Feature is not supported by the device.");
            return;
        }
        String str = (String) this.f17248J.get("iurl");
        if (TextUtils.isEmpty(str)) {
            l("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            l("Invalid image url: ".concat(String.valueOf(str)));
            return;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        if (TextUtils.isEmpty(lastPathSegment) || !lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
            l("Image type not recognized: ".concat(String.valueOf(lastPathSegment)));
            return;
        }
        Resources resourcesB = lVar.f25987g.b();
        AlertDialog.Builder builderI = p113o3.O.i(activity);
        builderI.setTitle(resourcesB != null ? resourcesB.getString(R.string.s1) : "Save image");
        builderI.setMessage(resourcesB != null ? resourcesB.getString(R.string.s2) : "Allow Ad to store image in Picture gallery?");
        builderI.setPositiveButton(resourcesB != null ? resourcesB.getString(R.string.s3) : "Accept", new DialogInterfaceOnClickListenerC0944Ub(this, str, lastPathSegment));
        builderI.setNegativeButton(resourcesB != null ? resourcesB.getString(R.string.s4) : "Decline", new DialogInterfaceOnClickListenerC0958Vb(this, 0));
        builderI.create().show();
    }
}
