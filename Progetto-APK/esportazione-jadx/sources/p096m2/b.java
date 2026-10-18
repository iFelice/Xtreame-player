package p096m2;

import P1.e;
import P1.x;
import T1.i;
import Y.r;
import android.os.Build;
import com.google.protobuf.U2;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.util.Set;
import p027d2.c;
import p027d2.d;
import p148t.a;
import p156u.h;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class b extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f27207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f27208e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Object obj, x xVar, int i8) {
        super(xVar);
        this.f27207d = i8;
        this.f27208e = obj;
        q0.h(xVar, "database");
    }

    @Override // p079k.AbstractC3012d
    public final String e() {
        switch (this.f27207d) {
            case 0:
                return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
            case 1:
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            case 2:
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
            case 3:
                return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
            case 4:
                return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
            case 5:
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            default:
                return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }
    }

    @Override // P1.e
    public final void t(i iVar, Object obj) throws Throwable {
        int i8;
        int i9;
        byte[] byteArray;
        int i10 = 3;
        switch (this.f27207d) {
            case 0:
                a aVar = (a) obj;
                String str = aVar.f27205a;
                if (str == null) {
                    iVar.J(1);
                } else {
                    iVar.g(1, str);
                }
                String str2 = aVar.f27206b;
                if (str2 == null) {
                    iVar.J(2);
                    return;
                } else {
                    iVar.g(2, str2);
                    return;
                }
            case 1:
                d dVar = (d) obj;
                String str3 = dVar.f27212a;
                if (str3 == null) {
                    iVar.J(1);
                } else {
                    iVar.g(1, str3);
                }
                Long l4 = dVar.f27213b;
                if (l4 == null) {
                    iVar.J(2);
                    return;
                } else {
                    iVar.w(2, l4.longValue());
                    return;
                }
            case 2:
                g gVar = (g) obj;
                String str4 = gVar.f27217a;
                if (str4 == null) {
                    iVar.J(1);
                } else {
                    iVar.g(1, str4);
                }
                iVar.w(2, gVar.f27218b);
                iVar.w(3, gVar.f27219c);
                return;
            case 3:
                iVar.J(1);
                iVar.J(2);
                return;
            case 4:
                m mVar = (m) obj;
                String str5 = mVar.f27233a;
                if (str5 == null) {
                    iVar.J(1);
                } else {
                    iVar.g(1, str5);
                }
                byte[] bArrC = p027d2.e.c(mVar.f27234b);
                if (bArrC == null) {
                    iVar.J(2);
                    return;
                } else {
                    iVar.A(2, bArrC);
                    return;
                }
            case 5:
                q qVar = (q) obj;
                String str6 = qVar.f27242a;
                if (str6 == null) {
                    iVar.J(1);
                } else {
                    iVar.g(1, str6);
                }
                iVar.w(2, S3.e.o(qVar.f27243b));
                String str7 = qVar.f27244c;
                if (str7 == null) {
                    iVar.J(3);
                } else {
                    iVar.g(3, str7);
                }
                String str8 = qVar.f27245d;
                if (str8 == null) {
                    iVar.J(4);
                } else {
                    iVar.g(4, str8);
                }
                byte[] bArrC2 = p027d2.e.c(qVar.f27246e);
                if (bArrC2 == null) {
                    iVar.J(5);
                } else {
                    iVar.A(5, bArrC2);
                }
                byte[] bArrC3 = p027d2.e.c(qVar.f27247f);
                if (bArrC3 == null) {
                    iVar.J(6);
                } else {
                    iVar.A(6, bArrC3);
                }
                iVar.w(7, qVar.f27248g);
                iVar.w(8, qVar.f27249h);
                iVar.w(9, qVar.f27250i);
                iVar.w(10, qVar.f27252k);
                int i11 = qVar.f27253l;
                a.f(i11, "backoffPolicy");
                int iB = h.b(i11);
                if (iB == 0) {
                    i8 = 0;
                } else {
                    if (iB != 1) {
                        throw new r(16, (Object) null);
                    }
                    i8 = 1;
                }
                iVar.w(11, i8);
                iVar.w(12, qVar.f27254m);
                iVar.w(13, qVar.f27255n);
                iVar.w(14, qVar.f27256o);
                iVar.w(15, qVar.f27257p);
                iVar.w(16, qVar.f27258q ? 1L : 0L);
                int i12 = qVar.f27259r;
                a.f(i12, "policy");
                int iB2 = h.b(i12);
                if (iB2 == 0) {
                    i9 = 0;
                } else {
                    if (iB2 != 1) {
                        throw new r(16, (Object) null);
                    }
                    i9 = 1;
                }
                iVar.w(17, i9);
                iVar.w(18, qVar.f27260s);
                iVar.w(19, qVar.f27261t);
                d dVar2 = qVar.f27251j;
                if (dVar2 == null) {
                    iVar.J(20);
                    iVar.J(21);
                    iVar.J(22);
                    iVar.J(23);
                    iVar.J(24);
                    iVar.J(25);
                    iVar.J(26);
                    iVar.J(27);
                    return;
                }
                int i13 = dVar2.f24620a;
                a.f(i13, "networkType");
                int iB3 = h.b(i13);
                if (iB3 == 0) {
                    i10 = 0;
                } else if (iB3 == 1) {
                    i10 = 1;
                } else if (iB3 == 2) {
                    i10 = 2;
                } else if (iB3 != 3) {
                    if (iB3 == 4) {
                        i10 = 4;
                    } else {
                        if (Build.VERSION.SDK_INT < 30 || i13 != 6) {
                            throw new IllegalArgumentException("Could not convert " + U2.C(i13) + " to int");
                        }
                        i10 = 5;
                    }
                }
                iVar.w(20, i10);
                iVar.w(21, dVar2.f24621b ? 1L : 0L);
                iVar.w(22, dVar2.f24622c ? 1L : 0L);
                iVar.w(23, dVar2.f24623d ? 1L : 0L);
                iVar.w(24, dVar2.f24624e ? 1L : 0L);
                iVar.w(25, dVar2.f24625f);
                iVar.w(26, dVar2.f24626g);
                Set<c> set = dVar2.f24627h;
                q0.h(set, "triggers");
                if (set.isEmpty()) {
                    byteArray = new byte[0];
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                        try {
                            objectOutputStream.writeInt(set.size());
                            for (c cVar : set) {
                                objectOutputStream.writeUTF(cVar.f24617a.toString());
                                objectOutputStream.writeBoolean(cVar.f24618b);
                            }
                            q0.k(objectOutputStream, null);
                            q0.k(byteArrayOutputStream, null);
                            byteArray = byteArrayOutputStream.toByteArray();
                            q0.g(byteArray, "outputStream.toByteArray()");
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                q0.k(objectOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            q0.k(byteArrayOutputStream, th3);
                            throw th4;
                        }
                    }
                }
                iVar.A(27, byteArray);
                return;
            default:
                t tVar = (t) obj;
                String str9 = tVar.f27274a;
                if (str9 == null) {
                    iVar.J(1);
                } else {
                    iVar.g(1, str9);
                }
                String str10 = tVar.f27275b;
                if (str10 == null) {
                    iVar.J(2);
                    return;
                } else {
                    iVar.g(2, str10);
                    return;
                }
        }
    }
}
