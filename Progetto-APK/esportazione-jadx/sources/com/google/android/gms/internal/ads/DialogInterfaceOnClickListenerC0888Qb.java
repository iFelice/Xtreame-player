package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;
import android.provider.CalendarContract;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Qb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0888Qb implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16029G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0902Rb f16030H;

    public /* synthetic */ DialogInterfaceOnClickListenerC0888Qb(C0902Rb c0902Rb, int i8) {
        this.f16029G = i8;
        this.f16030H = c0902Rb;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f16029G;
        C0902Rb c0902Rb = this.f16030H;
        switch (i9) {
            case 0:
                c0902Rb.getClass();
                Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
                data.putExtra("title", c0902Rb.f16266L);
                data.putExtra("eventLocation", c0902Rb.f16270P);
                data.putExtra("description", c0902Rb.f16269O);
                long j8 = c0902Rb.f16267M;
                if (j8 > -1) {
                    data.putExtra("beginTime", j8);
                }
                long j9 = c0902Rb.f16268N;
                if (j9 > -1) {
                    data.putExtra("endTime", j9);
                }
                data.setFlags(268435456);
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                p113o3.O.p(c0902Rb.f16265K, data);
                break;
            default:
                c0902Rb.l("Operation denied by user.");
                break;
        }
    }
}
