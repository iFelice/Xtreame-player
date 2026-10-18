package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.C2527a1;
import com.google.android.gms.internal.measurement.C2533b1;
import com.google.android.gms.internal.measurement.C2557f1;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import p021c4.C0572d;
import p021c4.C0597l0;
import p021c4.C0602o;
import p021c4.C0611t;
import p021c4.C0613u;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1369gg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18955a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f18956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f18957c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f18958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f18959e;

    public C1369gg() {
    }

    public static C1369gg c(C0613u c0613u) {
        String str = c0613u.f11371G;
        return new C1369gg(c0613u.f11374J, c0613u.f11372H.i(), str, c0613u.f11373I);
    }

    public final C0613u a() {
        return new C0613u((String) this.f18957c, new C0611t(new Bundle((Bundle) this.f18959e)), (String) this.f18958d, this.f18956b);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0106  */
    /* JADX WARN: Code duplicated, block: B:71:0x01fe  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v8 */
    public final C2533b1 b(C2533b1 c2533b1, String str) throws Throwable {
        ?? r7;
        Cursor cursorRawQuery;
        Pair pairCreate;
        Object obj;
        String strW = c2533b1.w();
        List listX = c2533b1.x();
        C0572d c0572d = (C0572d) this.f18959e;
        p021c4.A1 a8 = c0572d.f11343H;
        a8.e();
        Long l4 = (Long) p021c4.E1.x(c2533b1, "_eid");
        if (l4 != null) {
            if (strW.equals("_ep")) {
                a8.e();
                String str2 = (String) p021c4.E1.x(c2533b1, "_en");
                if (TextUtils.isEmpty(str2)) {
                    p021c4.T t7 = ((C0597l0) c0572d.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11040M.b(l4, "Extra parameter without an event name. eventId");
                    return null;
                }
                if (((C2533b1) this.f18957c) == null || ((Long) this.f18958d) == null || l4.longValue() != ((Long) this.f18958d).longValue()) {
                    C0602o c0602o = a8.f10654I;
                    p021c4.A1.I(c0602o);
                    c0602o.m();
                    c0602o.n();
                    try {
                        try {
                            cursorRawQuery = c0602o.j0().rawQuery("select main_event, children_to_process from main_event_params where app_id=? and event_id=?", new String[]{str, l4.toString()});
                            try {
                                if (cursorRawQuery.moveToFirst()) {
                                    try {
                                        pairCreate = Pair.create((C2533b1) ((C2527a1) p021c4.E1.O(C2533b1.u(), cursorRawQuery.getBlob(0))).e(), Long.valueOf(cursorRawQuery.getLong(1)));
                                        cursorRawQuery.close();
                                    } catch (IOException e8) {
                                        p021c4.T t8 = ((C0597l0) c0602o.f10616G).f11258O;
                                        C0597l0.k(t8);
                                        t8.f11039L.d(p021c4.T.t(str), l4, e8, "Failed to merge main event. appId, eventId");
                                        cursorRawQuery.close();
                                        pairCreate = null;
                                    }
                                    if (pairCreate != null || (obj = pairCreate.first) == null) {
                                        p021c4.T t9 = ((C0597l0) ((C0572d) this.f18959e).f10616G).f11258O;
                                        C0597l0.k(t9);
                                        t9.f11040M.c(str2, l4, "Extra parameter without existing main event. eventName, eventId");
                                        return null;
                                    }
                                    this.f18957c = (C2533b1) obj;
                                    this.f18956b = ((Long) pairCreate.second).longValue();
                                    ((C0572d) this.f18959e).f11343H.e();
                                    this.f18958d = (Long) p021c4.E1.x((C2533b1) this.f18957c, "_eid");
                                } else {
                                    p021c4.T t10 = ((C0597l0) c0602o.f10616G).f11258O;
                                    C0597l0.k(t10);
                                    t10.f11047T.a("Main event not found");
                                }
                            } catch (SQLiteException e9) {
                                e = e9;
                                p021c4.T t11 = ((C0597l0) c0602o.f10616G).f11258O;
                                C0597l0.k(t11);
                                t11.f11039L.b(e, "Error selecting main event");
                                if (cursorRawQuery != null) {
                                }
                                pairCreate = null;
                                if (pairCreate != null) {
                                }
                                p021c4.T t12 = ((C0597l0) ((C0572d) this.f18959e).f10616G).f11258O;
                                C0597l0.k(t12);
                                t12.f11040M.c(str2, l4, "Extra parameter without existing main event. eventName, eventId");
                                return null;
                            }
                        } catch (SQLiteException e10) {
                            e = e10;
                            cursorRawQuery = null;
                        } catch (Throwable th) {
                            th = th;
                            r7 = 0;
                            if (r7 != 0) {
                                r7.close();
                            }
                            throw th;
                        }
                        cursorRawQuery.close();
                        pairCreate = null;
                        if (pairCreate != null) {
                        }
                        p021c4.T t13 = ((C0597l0) ((C0572d) this.f18959e).f10616G).f11258O;
                        C0597l0.k(t13);
                        t13.f11040M.c(str2, l4, "Extra parameter without existing main event. eventName, eventId");
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        r7 = a8;
                        if (r7 != 0) {
                            r7.close();
                        }
                        throw th;
                    }
                }
                long j8 = this.f18956b - 1;
                this.f18956b = j8;
                if (j8 <= 0) {
                    C0602o c0602o2 = ((C0572d) this.f18959e).f11343H.f10654I;
                    p021c4.A1.I(c0602o2);
                    c0602o2.m();
                    p021c4.T t14 = ((C0597l0) c0602o2.f10616G).f11258O;
                    C0597l0.k(t14);
                    t14.f11047T.b(str, "Clearing complex main event info. appId");
                    try {
                        c0602o2.j0().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                    } catch (SQLiteException e11) {
                        p021c4.T t15 = ((C0597l0) c0602o2.f10616G).f11258O;
                        C0597l0.k(t15);
                        t15.f11039L.b(e11, "Error clearing complex main event");
                    }
                } else {
                    C0602o c0602o3 = ((C0572d) this.f18959e).f11343H.f10654I;
                    p021c4.A1.I(c0602o3);
                    c0602o3.Z(str, l4, this.f18956b, (C2533b1) this.f18957c);
                }
                ArrayList arrayList = new ArrayList();
                for (C2557f1 c2557f1 : ((C2533b1) this.f18957c).x()) {
                    ((C0572d) this.f18959e).f11343H.e();
                    if (p021c4.E1.w(c2533b1, c2557f1.v()) == null) {
                        arrayList.add(c2557f1);
                    }
                }
                if (arrayList.isEmpty()) {
                    p021c4.T t16 = ((C0597l0) ((C0572d) this.f18959e).f10616G).f11258O;
                    C0597l0.k(t16);
                    t16.f11040M.b(str2, "No unique parameters in main event. eventName");
                } else {
                    arrayList.addAll(listX);
                    listX = arrayList;
                }
                strW = str2;
            } else {
                this.f18958d = l4;
                this.f18957c = c2533b1;
                a8.e();
                Serializable serializableX = p021c4.E1.x(c2533b1, "_epc");
                long jLongValue = ((Long) (serializableX != null ? serializableX : 0L)).longValue();
                this.f18956b = jLongValue;
                if (jLongValue <= 0) {
                    p021c4.T t17 = ((C0597l0) c0572d.f10616G).f11258O;
                    C0597l0.k(t17);
                    t17.f11040M.b(strW, "Complex event with zero extra param count. eventName");
                } else {
                    C0602o c0602o4 = a8.f10654I;
                    p021c4.A1.I(c0602o4);
                    c0602o4.Z(str, l4, this.f18956b, c2533b1);
                }
            }
        }
        C2527a1 c2527a1 = (C2527a1) c2533b1.g();
        c2527a1.g();
        C2533b1.C((C2533b1) c2527a1.f23247H, strW);
        c2527a1.g();
        C2533b1.A((C2533b1) c2527a1.f23247H);
        c2527a1.g();
        C2533b1.y((C2533b1) c2527a1.f23247H, listX);
        return (C2533b1) c2527a1.e();
    }

    public final String toString() {
        switch (this.f18955a) {
            case 1:
                String string = ((Bundle) this.f18959e).toString();
                StringBuilder sb = new StringBuilder("origin=");
                sb.append((String) this.f18958d);
                sb.append(",name=");
                return com.google.protobuf.U2.n(sb, (String) this.f18957c, ",params=", string);
            default:
                return super.toString();
        }
    }

    public C1369gg(long j8, Bundle bundle, String str, String str2) {
        this.f18957c = str;
        this.f18958d = str2;
        this.f18959e = bundle;
        this.f18956b = j8;
    }

    public /* synthetic */ C1369gg(C0572d c0572d) {
        this.f18959e = c0572d;
    }
}
