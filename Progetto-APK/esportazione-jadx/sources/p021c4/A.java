package p021c4;

import K3.V;
import android.content.Context;
import com.google.ads.interactivemedia.pal.PlatformSignalCollector;
import com.google.android.gms.internal.ads.C1314fd;
import com.google.android.gms.internal.ads.InterfaceC0868Oj;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.InterfaceC1366gd;
import com.google.android.gms.internal.ads.InterfaceC1396h6;
import com.google.android.gms.internal.ads.InterfaceC1746nv;
import com.google.android.gms.internal.ads.InterfaceC2039td;
import com.google.android.gms.internal.ads.InterfaceC2247xd;
import com.google.android.gms.internal.measurement.A3;
import com.google.android.gms.internal.measurement.B3;
import com.google.android.gms.internal.measurement.C2632s3;
import com.google.android.gms.internal.measurement.C2642u3;
import com.google.android.gms.internal.measurement.C2662y3;
import com.google.android.gms.internal.measurement.C3;
import com.google.android.gms.internal.measurement.D3;
import com.google.android.gms.internal.measurement.InterfaceC2667z3;
import com.google.protobuf.InterfaceC2933o1;
import com.google.protobuf.InterfaceC2937p1;
import com.google.protobuf.U2;
import java.util.List;
import java.util.concurrent.ExecutorService;
import p052g4.b;
import p052g4.h;
import p052g4.i;
import p105n3.m;
import p113o3.I;
import p175w4.N;
import p189y3.a;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class A implements C, PlatformSignalCollector, InterfaceC2937p1, InterfaceC1746nv, InterfaceC1195dC, b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10640G;

    public /* synthetic */ A(int i8) {
        this.f10640G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2937p1
    public InterfaceC2933o1 b(int i8) {
        return N.b(i8);
    }

    @Override // com.google.ads.interactivemedia.pal.PlatformSignalCollector
    public h collectSignals(Context context, ExecutorService executorService) {
        i iVar = new i();
        context.getClass();
        executorService.getClass();
        executorService.execute(new V(iVar, context, 26));
        return iVar.f25345a;
    }

    @Override // p052g4.b
    public Object then(h hVar) {
        return Boolean.valueOf(hVar.h());
    }

    @Override // p021c4.C
    public Object zza() {
        switch (this.f10640G) {
            case 0:
                List list = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l4 = (Long) C2642u3.f23293a0.b();
                l4.getClass();
                return l4;
            case 1:
                List list2 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l8 = (Long) C2642u3.f23295b0.b();
                l8.getClass();
                return l8;
            case 2:
                List list3 = E.f10764a;
                ((D3) ((C3) B3.f22866H.f22867G.f31450G)).getClass();
                Boolean bool = (Boolean) D3.f22901b.b();
                bool.getClass();
                return bool;
            case 3:
                List list4 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23302f.b();
            case 4:
                List list5 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23333v.b()).longValue());
            case 5:
                List list6 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23318n.b()).longValue());
            case 6:
                List list7 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23291Z.b();
            case 7:
                List list8 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23287V.b();
            case 8:
                List list9 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23289X.b();
            case 9:
                List list10 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l9 = (Long) C2642u3.f23308i.b();
                l9.getClass();
                return l9;
            case 10:
                List list11 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23267B.b();
            case 11:
                List list12 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23331t0.b();
            case 12:
                List list13 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23310j.b();
            case 13:
                List list14 = E.f10764a;
                ((D3) ((C3) B3.f22866H.f22867G.f31450G)).getClass();
                Boolean bool2 = (Boolean) D3.f22900a.b();
                bool2.getClass();
                return bool2;
            case 14:
                List list15 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return (String) C2642u3.f23290Y.b();
            case 15:
                List list16 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23305g0.b()).longValue());
            case 16:
                List list17 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Long l10 = (Long) C2642u3.f23288W.b();
                l10.getClass();
                return l10;
            case 17:
                List list18 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23285T.b()).longValue());
            case 18:
                List list19 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23286U.b()).longValue());
            case 19:
                List list20 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23332u.b()).longValue());
            case 20:
                List list21 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23330t.b()).longValue());
            case 21:
                List list22 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Boolean bool3 = (Boolean) C2642u3.f23296c.b();
                bool3.getClass();
                return bool3;
            case 22:
                List list23 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                Boolean bool4 = (Boolean) C2642u3.f23266A.b();
                bool4.getClass();
                return bool4;
            case 23:
                List list24 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23337z.b()).longValue());
            default:
                List list25 = E.f10764a;
                ((A3) ((InterfaceC2667z3) C2662y3.f23414H.f23415G.f31450G)).getClass();
                Boolean bool5 = (Boolean) A3.f22862b.b();
                bool5.getClass();
                return bool5;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public /* synthetic */ void mo3zzb(Object obj) {
        I.k("Notification of cache hit successful.");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1746nv
    /* JADX INFO: renamed from: zza */
    public void mo8zza(Object obj) {
        switch (this.f10640G) {
            case 0:
                ((InterfaceC1396h6) obj).zzb();
                return;
            case 1:
                U2.u(obj);
                throw null;
            case 2:
                ((InterfaceC1396h6) obj).zzc();
                return;
            case 3:
                ((InterfaceC0868Oj) obj).zzg();
                return;
            case 4:
                ((m) obj).k3();
                return;
            case 5:
                ((m) obj).v0();
                return;
            case 6:
            default:
                C1314fd c1314fd = (C1314fd) ((InterfaceC1366gd) obj);
                c1314fd.O2(6, c1314fd.j0());
                return;
            case 7:
                C1314fd c1314fd2 = (C1314fd) ((InterfaceC1366gd) obj);
                c1314fd2.O2(3, c1314fd2.j0());
                return;
            case 8:
                ((InterfaceC2039td) obj).zzj();
                return;
            case 9:
                C1314fd c1314fd3 = (C1314fd) ((InterfaceC1366gd) obj);
                c1314fd3.O2(2, c1314fd3.j0());
                return;
            case 10:
                ((InterfaceC2039td) obj).a();
                return;
            case 11:
                ((InterfaceC2247xd) obj).zzg();
                return;
            case 12:
                C1314fd c1314fd4 = (C1314fd) ((InterfaceC1366gd) obj);
                c1314fd4.O2(1, c1314fd4.j0());
                return;
            case 13:
                ((a) obj).i();
                return;
            case 14:
                ((InterfaceC2039td) obj).b();
                return;
            case 15:
                C1314fd c1314fd5 = (C1314fd) ((InterfaceC1366gd) obj);
                c1314fd5.O2(8, c1314fd5.j0());
                return;
            case 16:
                ((InterfaceC2039td) obj).zzg();
                return;
            case 17:
                C1314fd c1314fd6 = (C1314fd) ((InterfaceC1366gd) obj);
                c1314fd6.O2(4, c1314fd6.j0());
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public void zza(Throwable th) {
        I.k("Notification of cache hit failed.");
    }
}
