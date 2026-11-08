package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes.dex */
public final class R4 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16206b;

    public R4(Context context, int i8) {
        this.f16205a = i8;
        if (i8 != 1) {
            this.f16206b = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(this, intentFilter);
            return;
        }
        this.f16206b = true;
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.USER_PRESENT");
        intentFilter2.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver(this, intentFilter2);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f16205a) {
            case 0:
                if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    this.f16206b = true;
                } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    this.f16206b = false;
                }
                break;
            default:
                if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    this.f16206b = true;
                } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    this.f16206b = false;
                }
                break;
        }
    }
}
