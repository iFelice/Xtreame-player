package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import android.widget.EditText;
import android.widget.Toast;
import com.preference.ui.debug.DebugActivity;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ub, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0944Ub implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16844G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f16845H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f16846I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f16847J;

    public DialogInterfaceOnClickListenerC0944Ub(C0972Wb c0972Wb, String str, String str2) {
        this.f16845H = str;
        this.f16846I = str2;
        this.f16847J = c0972Wb;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f16844G;
        Object obj = this.f16847J;
        Object obj2 = this.f16846I;
        Object obj3 = this.f16845H;
        switch (i9) {
            case 0:
                C0972Wb c0972Wb = (C0972Wb) obj;
                DownloadManager downloadManager = (DownloadManager) c0972Wb.f17249K.getSystemService("download");
                try {
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse((String) obj3));
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, (String) obj2);
                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                    request.allowScanningByMediaScanner();
                    request.setNotificationVisibility(1);
                    downloadManager.enqueue(request);
                } catch (IllegalStateException unused) {
                    c0972Wb.l("Could not store picture.");
                    return;
                }
                break;
            default:
                U5.a aVar = (U5.a) obj3;
                if (aVar != null) {
                    DebugActivity debugActivity = (DebugActivity) aVar;
                    try {
                        debugActivity.f24582g0.a((R5.b) obj2, ((EditText) obj).getText().toString());
                    } catch (NumberFormatException unused2) {
                        Toast.makeText(debugActivity, "you have entered an incorrect value", 0).show();
                    }
                }
                break;
        }
    }

    public DialogInterfaceOnClickListenerC0944Ub(DebugActivity debugActivity, R5.b bVar, EditText editText) {
        this.f16845H = debugActivity;
        this.f16846I = bVar;
        this.f16847J = editText;
    }
}
