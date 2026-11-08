package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import D1.G;
import U2.i;
import U2.q;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import p004a3.f;
import p004a3.j;
import p035e3.a;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f11630a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i8 = intent.getExtras().getInt("attemptNumber");
        q.b(context);
        u uVarA = i.a();
        uVarA.R(queryParameter);
        uVarA.S(a.b(iIntValue));
        if (queryParameter2 != null) {
            uVarA.f27279I = Base64.decode(queryParameter2, 0);
        }
        j jVar = q.a().f6972d;
        i iVarJ = uVarA.j();
        G g8 = new G(1);
        jVar.getClass();
        jVar.f8680e.execute(new f(jVar, iVarJ, i8, g8));
    }
}
