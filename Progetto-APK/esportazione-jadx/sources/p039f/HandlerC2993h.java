package p039f;

import C0.C0079d;
import E1.A;
import E1.AbstractC0178m;
import E1.C0173h;
import E1.C0174i;
import E1.C0176k;
import E1.C0180o;
import E1.U;
import E1.V;
import E1.X;
import E1.Y;
import E1.a0;
import E1.d0;
import E1.e0;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: renamed from: f.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerC2993h extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f25061a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakReference f25062b;

    public HandlerC2993h(U u7) {
        this.f25062b = new WeakReference(u7);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005d  */
    /* JADX WARN: Code duplicated, block: B:56:0x00fa  */
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        C0176k c0176k;
        C0079d c0079d;
        AbstractC0178m abstractC0178m;
        A a8;
        switch (this.f25061a) {
            case 0:
                int i8 = message.what;
                if (i8 == -3 || i8 == -2 || i8 == -1) {
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f25062b.get(), message.what);
                    break;
                } else if (i8 == 1) {
                    ((DialogInterface) message.obj).dismiss();
                    break;
                }
                break;
            default:
                U u7 = (U) this.f25062b.get();
                if (u7 != null) {
                    int i9 = message.what;
                    int i10 = message.arg1;
                    int i11 = message.arg2;
                    Object obj = message.obj;
                    Bundle bundlePeekData = message.peekData();
                    SparseArray sparseArray = u7.f2678h;
                    V v5 = null;
                    V v7 = null;
                    a0 a0Var = u7.f2679i;
                    switch (i9) {
                        case 0:
                            if (i10 == u7.f2677g) {
                                u7.f2677g = 0;
                                if (a0Var.f2703n == u7) {
                                    a0Var.l();
                                }
                            }
                            if (((X) sparseArray.get(i10)) != null) {
                                sparseArray.remove(i10);
                                X.a(null, null);
                            }
                            break;
                        case 2:
                            if (obj == null || (obj instanceof Bundle)) {
                                Bundle bundle = (Bundle) obj;
                                if (u7.f2676f == 0 && i10 == u7.f2677g && i11 >= 1) {
                                    u7.f2677g = 0;
                                    u7.f2676f = i11;
                                    C0180o c0180oA = C0180o.a(bundle);
                                    if (a0Var.f2703n == u7) {
                                        a0Var.g(c0180oA);
                                    }
                                    if (a0Var.f2703n == u7) {
                                        a0Var.f2704o = true;
                                        ArrayList arrayList = a0Var.f2700k;
                                        int size = arrayList.size();
                                        for (int i12 = 0; i12 < size; i12++) {
                                            ((V) arrayList.get(i12)).c(a0Var.f2703n);
                                        }
                                        C0174i c0174i = a0Var.f2789e;
                                        if (c0174i != null) {
                                            U u8 = a0Var.f2703n;
                                            int i13 = u8.f2674d;
                                            u8.f2674d = i13 + 1;
                                            u8.b(10, i13, 0, c0174i.f2752a, null);
                                        }
                                    }
                                }
                            }
                            break;
                        case 3:
                            if (obj == null || (obj instanceof Bundle)) {
                                Bundle bundle2 = (Bundle) obj;
                                X x7 = (X) sparseArray.get(i10);
                                if (x7 != null) {
                                    sparseArray.remove(i10);
                                    x7.b(bundle2);
                                }
                            }
                            break;
                        case 4:
                            if (obj == null || (obj instanceof Bundle)) {
                                String string = bundlePeekData != null ? bundlePeekData.getString("error") : null;
                                Bundle bundle3 = (Bundle) obj;
                                if (((X) sparseArray.get(i10)) != null) {
                                    sparseArray.remove(i10);
                                    X.a(string, bundle3);
                                }
                            }
                            break;
                        case 5:
                            if (obj == null || (obj instanceof Bundle)) {
                                Bundle bundle4 = (Bundle) obj;
                                if (u7.f2676f != 0) {
                                    C0180o c0180oA2 = C0180o.a(bundle4);
                                    if (a0Var.f2703n == u7) {
                                        a0Var.g(c0180oA2);
                                    }
                                }
                            }
                            break;
                        case 6:
                            if (obj instanceof Bundle) {
                                Bundle bundle5 = (Bundle) obj;
                                X x8 = (X) sparseArray.get(i10);
                                if (bundle5 == null || !bundle5.containsKey("routeId")) {
                                    x8.getClass();
                                    X.a("DynamicGroupRouteController is created without valid route id.", bundle5);
                                } else {
                                    sparseArray.remove(i10);
                                    x8.b(bundle5);
                                }
                            } else {
                                Log.w("MediaRouteProviderProxy", "No further information on the dynamic group controller");
                            }
                            break;
                        case 7:
                            if (obj == null || (obj instanceof Bundle)) {
                                Bundle bundle6 = (Bundle) obj;
                                if (u7.f2676f != 0) {
                                    Bundle bundle7 = (Bundle) bundle6.getParcelable("groupRoute");
                                    C0173h c0173h = bundle7 != null ? new C0173h(bundle7) : null;
                                    ArrayList<Bundle> parcelableArrayList = bundle6.getParcelableArrayList("dynamicRoutes");
                                    ArrayList arrayList2 = new ArrayList();
                                    for (Bundle bundle8 : parcelableArrayList) {
                                        if (bundle8 == null) {
                                            c0176k = null;
                                        } else {
                                            Bundle bundle9 = bundle8.getBundle("mrDescriptor");
                                            C0173h c0173h2 = bundle9 != null ? new C0173h(bundle9) : null;
                                            int i14 = bundle8.getInt("selectionState", 1);
                                            bundle8.getBoolean("isUnselectable", false);
                                            bundle8.getBoolean("isGroupable", false);
                                            bundle8.getBoolean("isTransferable", false);
                                            c0176k = new C0176k(c0173h2, i14);
                                        }
                                        arrayList2.add(c0176k);
                                    }
                                    if (a0Var.f2703n == u7) {
                                        for (V v8 : a0Var.f2700k) {
                                            if (v8.a() == i11) {
                                                v7 = v8;
                                                if (v7 instanceof Y) {
                                                    ((Y) v7).j(c0173h, arrayList2);
                                                }
                                                break;
                                            }
                                        }
                                        if (v7 instanceof Y) {
                                            ((Y) v7).j(c0173h, arrayList2);
                                        }
                                    }
                                }
                            }
                            break;
                        case 8:
                            if (a0Var.f2703n == u7) {
                                ArrayList<V> arrayList3 = a0Var.f2700k;
                                for (V v9 : arrayList3) {
                                    if (v9.a() == i11) {
                                        v5 = v9;
                                        c0079d = a0Var.f2705p;
                                        if (c0079d != null && (v5 instanceof AbstractC0178m)) {
                                            abstractC0178m = (AbstractC0178m) v5;
                                            a8 = (A) ((d0) ((e0) c0079d.f1294H).f2723c);
                                            if (a8.f2604u == abstractC0178m) {
                                                a8.k(a8.c(), 2);
                                            }
                                        }
                                        arrayList3.remove(v5);
                                        v5.b();
                                        a0Var.m();
                                        break;
                                    }
                                }
                                c0079d = a0Var.f2705p;
                                if (c0079d != null) {
                                    abstractC0178m = (AbstractC0178m) v5;
                                    a8 = (A) ((d0) ((e0) c0079d.f1294H).f2723c);
                                    if (a8.f2604u == abstractC0178m) {
                                        a8.k(a8.c(), 2);
                                    }
                                }
                                arrayList3.remove(v5);
                                v5.b();
                                a0Var.m();
                            }
                            break;
                    }
                    int i15 = a0.f2697q;
                }
                break;
        }
    }

    public HandlerC2993h(DialogInterface dialogInterface) {
        this.f25062b = new WeakReference(dialogInterface);
    }
}
