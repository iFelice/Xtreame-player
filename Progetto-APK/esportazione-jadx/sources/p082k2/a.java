package p082k2;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import p027d2.n;
import p096m2.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f25915g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, u uVar, int i8) {
        super(context, uVar);
        this.f25915g = i8;
        if (i8 == 1) {
            super(context, uVar);
        } else if (i8 != 2) {
        } else {
            super(context, uVar);
        }
    }

    @Override // p082k2.f
    public final /* bridge */ /* synthetic */ Object a() {
        switch (this.f25915g) {
            case 0:
                break;
            case 1:
                break;
        }
        return h();
    }

    @Override // p082k2.d
    public final IntentFilter f() {
        switch (this.f25915g) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                if (Build.VERSION.SDK_INT >= 23) {
                    intentFilter.addAction("android.os.action.CHARGING");
                    intentFilter.addAction("android.os.action.DISCHARGING");
                } else {
                    intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
                    intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
                }
                return intentFilter;
            case 1:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.BATTERY_OKAY");
                intentFilter2.addAction("android.intent.action.BATTERY_LOW");
                return intentFilter2;
            default:
                IntentFilter intentFilter3 = new IntentFilter();
                intentFilter3.addAction("android.intent.action.DEVICE_STORAGE_OK");
                intentFilter3.addAction("android.intent.action.DEVICE_STORAGE_LOW");
                return intentFilter3;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // p082k2.d
    public final void g(Intent intent) {
        switch (this.f25915g) {
            case 0:
                q0.h(intent, "intent");
                String action = intent.getAction();
                if (action != null) {
                    n.d().a(b.f25916a, "Received ".concat(action));
                    switch (action.hashCode()) {
                        case -1886648615:
                            if (action.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                                c(Boolean.FALSE);
                                break;
                            }
                            break;
                        case -54942926:
                            if (action.equals("android.os.action.DISCHARGING")) {
                                c(Boolean.FALSE);
                                break;
                            }
                            break;
                        case 948344062:
                            if (action.equals("android.os.action.CHARGING")) {
                                c(Boolean.TRUE);
                                break;
                            }
                            break;
                        case 1019184907:
                            if (action.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                                c(Boolean.TRUE);
                                break;
                            }
                            break;
                    }
                }
                break;
            case 1:
                q0.h(intent, "intent");
                if (intent.getAction() != null) {
                    n.d().a(c.f25917a, "Received " + intent.getAction());
                    String action2 = intent.getAction();
                    if (action2 != null) {
                        int iHashCode = action2.hashCode();
                        if (iHashCode != -1980154005) {
                            if (iHashCode == 490310653 && action2.equals("android.intent.action.BATTERY_LOW")) {
                                c(Boolean.FALSE);
                            }
                            break;
                        } else if (action2.equals("android.intent.action.BATTERY_OKAY")) {
                            c(Boolean.TRUE);
                            break;
                        }
                    }
                }
                break;
            default:
                q0.h(intent, "intent");
                if (intent.getAction() != null) {
                    n.d().a(l.f25932a, "Received " + intent.getAction());
                    String action3 = intent.getAction();
                    if (action3 != null) {
                        int iHashCode2 = action3.hashCode();
                        if (iHashCode2 != -1181163412) {
                            if (iHashCode2 == -730838620 && action3.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                                c(Boolean.TRUE);
                            }
                            break;
                        } else if (action3.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                            c(Boolean.FALSE);
                            break;
                        }
                    }
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0040  */
    public final Boolean h() {
        int intExtra;
        int i8 = this.f25915g;
        boolean z7 = false;
        Context context = this.f25921b;
        switch (i8) {
            case 0:
                Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                if (intentRegisterReceiver == null) {
                    n.d().b(b.f25916a, "getInitialState - null intent received");
                    return Boolean.FALSE;
                }
                if (Build.VERSION.SDK_INT < 23 ? intentRegisterReceiver.getIntExtra("plugged", 0) != 0 : !((intExtra = intentRegisterReceiver.getIntExtra("status", -1)) != 2 && intExtra != 5)) {
                    z7 = true;
                }
                return Boolean.valueOf(z7);
            case 1:
                Intent intentRegisterReceiver2 = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                if (intentRegisterReceiver2 != null) {
                    return Boolean.valueOf(intentRegisterReceiver2.getIntExtra("status", -1) == 1 || ((float) intentRegisterReceiver2.getIntExtra("level", -1)) / ((float) intentRegisterReceiver2.getIntExtra("scale", -1)) > 0.15f);
                }
                n.d().b(c.f25917a, "getInitialState - null intent received");
                return Boolean.FALSE;
            default:
                Intent intentRegisterReceiver3 = context.registerReceiver(null, f());
                if (intentRegisterReceiver3 == null || intentRegisterReceiver3.getAction() == null) {
                    z7 = true;
                } else {
                    String action = intentRegisterReceiver3.getAction();
                    if (action != null) {
                        int iHashCode = action.hashCode();
                        if (iHashCode == -1181163412) {
                            action.equals("android.intent.action.DEVICE_STORAGE_LOW");
                        } else if (iHashCode == -730838620 && action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                            z7 = true;
                        }
                    }
                }
                return Boolean.valueOf(z7);
        }
    }
}
