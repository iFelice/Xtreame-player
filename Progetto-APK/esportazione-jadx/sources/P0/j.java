package P0;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.AH;
import com.google.android.gms.internal.ads.C0864Of;
import com.google.android.gms.internal.ads.C2173w6;
import com.google.android.gms.internal.ads.C2246xc;
import com.google.android.gms.internal.ads.C6;
import com.google.android.gms.internal.ads.Dw;
import com.google.android.gms.internal.ads.EnumC1863q7;
import com.google.android.gms.internal.ads.F6;
import com.google.android.gms.internal.ads.I6;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.J6;
import com.google.android.gms.internal.ads.L6;
import com.google.android.gms.internal.ads.M6;
import com.google.android.gms.internal.ads.Rp;
import com.google.android.gms.internal.ads.S6;
import com.google.android.gms.internal.ads.T6;
import com.google.android.gms.internal.ads.Wp;
import com.google.android.gms.internal.pal.C2;
import com.google.android.gms.internal.pal.C2846w2;
import com.google.android.gms.internal.pal.D2;
import com.google.android.gms.internal.pal.E2;
import com.preference.ui.debug.DebugActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p113o3.K;
import p113o3.L;
import y2.D;
import y2.G;

/* JADX INFO: loaded from: classes.dex */
public final class j implements InterfaceC1195dC, Dw {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f5729G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f5730H;

    public j(int i8) {
        if (i8 != 2) {
            return;
        }
        this.f5730H = new Handler(Looper.getMainLooper(), new G());
    }

    public static j c(Context context) {
        D2 c8;
        try {
            try {
                try {
                    IBinder iBinderB = S3.c.c(context, S3.c.f6415b, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (iBinderB == null) {
                        c8 = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        c8 = iInterfaceQueryLocalInterface instanceof D2 ? (D2) iInterfaceQueryLocalInterface : new C2(iBinderB, "com.google.android.gms.gass.internal.clearcut.IGassClearcut", 5);
                    }
                    c8.G(new R3.b(context), "ADSHIELD");
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new j(c8);
                } catch (Exception e8) {
                    throw new C2846w2(e8);
                }
            } catch (RemoteException | C2846w2 | NullPointerException | SecurityException unused) {
                Log.d("GASS", "Cannot dynamite load clearcut");
                return new j(new E2("com.google.android.gms.gass.internal.clearcut.IGassClearcut", 2));
            }
        } catch (Exception e9) {
            throw new C2846w2(e9);
        }
    }

    public final void a(R5.b bVar, String str) {
        String str2 = bVar.f6309G;
        Q5.b bVarB = Q5.b.b();
        Map map = bVarB.f6042b;
        SharedPreferences sharedPreferences = bVarB.f6041a.getSharedPreferences(str2, 0);
        int iB = p156u.h.b(bVar.f6312J);
        String str3 = bVar.f6310H;
        if (iB == 0) {
            sharedPreferences.edit().putBoolean(str3, Boolean.parseBoolean(str)).apply();
            bVar.f6311I = Boolean.valueOf(Boolean.parseBoolean(str));
        } else if (iB == 1) {
            sharedPreferences.edit().putString(str3, str).apply();
            bVar.f6311I = str;
        } else if (iB == 2) {
            sharedPreferences.edit().putLong(str3, Long.parseLong(str)).apply();
            bVar.f6311I = Long.valueOf(Long.parseLong(str));
        } else if (iB == 3) {
            sharedPreferences.edit().putFloat(str3, Float.parseFloat(str)).apply();
            bVar.f6311I = Float.valueOf(Float.parseFloat(str));
        } else if (iB == 4) {
            sharedPreferences.edit().putInt(str3, Integer.parseInt(str)).apply();
            bVar.f6311I = Integer.valueOf(Integer.parseInt(str));
        }
        ((DebugActivity) ((T5.g) this.f5730H)).f24581f0.f5265G.a();
    }

    public final synchronized void b(D d6, boolean z7) {
        try {
            if (this.f5729G || z7) {
                ((Handler) this.f5730H).obtainMessage(1, d6).sendToTarget();
            } else {
                this.f5729G = true;
                d6.b();
                this.f5729G = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.Dw
    public final Object zza(Object obj) {
        long j8;
        C2246xc c2246xc = (C2246xc) this.f5730H;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        if (this.f5729G) {
            ((Context) c2246xc.f21882H).deleteDatabase("OfflineUpload.db");
        } else {
            c2246xc.getClass();
            ArrayList arrayList = new ArrayList();
            Cursor cursorQuery = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(I6.Q(cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow("serialized_proto_data"))));
                } catch (AH e8) {
                    p120p3.h.d("Unable to deserialize proto from offline signals database:");
                    p120p3.h.d(e8.getMessage());
                }
            }
            cursorQuery.close();
            Context context = (Context) c2246xc.f21882H;
            J6 j6I = M6.I();
            String packageName = context.getPackageName();
            j6I.d();
            M6.E((M6) j6I.f20255H, packageName);
            String str = Build.MODEL;
            j6I.d();
            M6.F((M6) j6I.f20255H, str);
            int iL = a7.b.l(sQLiteDatabase, 0);
            j6I.d();
            M6.B((M6) j6I.f20255H, iL);
            j6I.d();
            M6.A((M6) j6I.f20255H, arrayList);
            int iL2 = a7.b.l(sQLiteDatabase, 1);
            j6I.d();
            M6.C((M6) j6I.f20255H, iL2);
            int iL3 = a7.b.l(sQLiteDatabase, 3);
            j6I.d();
            M6.H((M6) j6I.f20255H, iL3);
            p083k3.l.f25980A.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            j6I.d();
            M6.D((M6) j6I.f20255H, jCurrentTimeMillis);
            Cursor cursorV = a7.b.v(sQLiteDatabase, 2);
            if (cursorV.getCount() > 0) {
                cursorV.moveToNext();
                j8 = cursorV.getLong(cursorV.getColumnIndexOrThrow("value"));
            } else {
                j8 = 0;
            }
            cursorV.close();
            j6I.d();
            M6.G((M6) j6I.f20255H, j8);
            M6 m7 = (M6) j6I.b();
            int size = arrayList.size();
            long jN = 0;
            for (int i8 = 0; i8 < size; i8++) {
                I6 i9 = (I6) arrayList.get(i8);
                if (i9.O() == 2 && i9.N() > jN) {
                    jN = i9.N();
                }
            }
            if (jN != 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", Long.valueOf(jN));
                sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
            }
            ((C2173w6) c2246xc.f21883I).a(new C0864Of(m7, 20));
            p120p3.a aVar = (p120p3.a) c2246xc.f21885K;
            S6 s6B = T6.B();
            int i10 = aVar.f28197H;
            s6B.d();
            T6.C((T6) s6B.f20255H, i10);
            int i11 = ((p120p3.a) c2246xc.f21885K).f28198I;
            s6B.d();
            T6.D((T6) s6B.f20255H, i11);
            int i12 = true != ((p120p3.a) c2246xc.f21885K).f28199J ? 2 : 0;
            s6B.d();
            T6.A((T6) s6B.f20255H, i12);
            ((C2173w6) c2246xc.f21883I).a(new C0864Of((T6) s6B.b(), 21));
            ((C2173w6) c2246xc.f21883I).b(10004);
            sQLiteDatabase.delete("offline_signal_contents", null, null);
            a7.b.x(sQLiteDatabase, "failed_requests");
            a7.b.x(sQLiteDatabase, "total_requests");
            a7.b.x(sQLiteDatabase, "completed_requests");
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code duplicated, block: B:25:0x0079  */
    /* JADX WARN: Code duplicated, block: B:28:0x0082  */
    /* JADX WARN: Code duplicated, block: B:29:0x0084  */
    /* JADX WARN: Code duplicated, block: B:32:0x008d  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0098  */
    /* JADX WARN: Code duplicated, block: B:37:0x009a  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:55:0x0100  */
    /* JADX WARN: Code duplicated, block: B:56:0x010b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0118  */
    /* JADX WARN: Code duplicated, block: B:59:0x011a  */
    /* JADX WARN: Code duplicated, block: B:60:0x011c  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b9 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        List listEmptyList;
        List listAsList;
        ArrayList arrayList;
        Iterator it;
        int i8;
        Wp wp;
        C6 c6A;
        int i9;
        int i10;
        String str;
        EnumC1863q7 enumC1863q7;
        Bundle bundle = (Bundle) obj;
        if (((L) ((K) ((Wp) this.f5730H).f24905a)).r()) {
            return;
        }
        Object obj2 = bundle.get("ad_types");
        if (obj2 instanceof List) {
            listAsList = (List) obj2;
        } else {
            if (obj2 instanceof String[]) {
                listAsList = Arrays.asList((String[]) obj2);
            } else {
                listEmptyList = Collections.emptyList();
            }
            arrayList = new ArrayList();
            it = listEmptyList.iterator();
            while (true) {
                i8 = 3;
                if (it.hasNext()) {
                    L6 l8 = (L6) Wp.f17323h.get(com.bumptech.glide.c.z("network", com.bumptech.glide.c.z("device", bundle)).getInt("active_network_state", -1), L6.UNSPECIFIED);
                    wp = (Wp) this.f5730H;
                    c6A = F6.A();
                    i9 = bundle.getInt("cnt", -2);
                    i10 = bundle.getInt("gnt", 0);
                    if (i9 == -1) {
                        wp.f17328g = 2;
                    } else {
                        wp.f17328g = 1;
                        if (i9 != 0) {
                            c6A.d();
                            F6.B((F6) c6A.f20255H, 2);
                        } else if (i9 != 1) {
                            c6A.d();
                            F6.B((F6) c6A.f20255H, 1);
                        } else {
                            c6A.d();
                            F6.B((F6) c6A.f20255H, 3);
                        }
                        switch (i10) {
                            case 1:
                            case 2:
                            case 4:
                            case 7:
                            case 11:
                            case 16:
                                i8 = 2;
                                break;
                            case 3:
                            case 5:
                            case 6:
                            case 8:
                            case 9:
                            case 10:
                            case 12:
                            case 14:
                            case 15:
                            case 17:
                                break;
                            case 13:
                                i8 = 4;
                                break;
                            default:
                                i8 = 1;
                                break;
                        }
                        c6A.d();
                        F6.C((F6) c6A.f20255H, i8);
                    }
                    F6 f8 = (F6) c6A.b();
                    Wp wp2 = (Wp) this.f5730H;
                    ((Rp) wp2.f24906b).a(new C2246xc(this, arrayList, f8, l8, 15));
                    return;
                }
                str = (String) it.next();
                str.getClass();
                switch (str) {
                    case "banner":
                        enumC1863q7 = EnumC1863q7.BANNER;
                        break;
                    case "native":
                        enumC1863q7 = EnumC1863q7.NATIVE_APP_INSTALL;
                        break;
                    case "rewarded":
                        enumC1863q7 = EnumC1863q7.REWARD_BASED_VIDEO_AD;
                        break;
                    case "interstitial":
                        enumC1863q7 = EnumC1863q7.INTERSTITIAL;
                        break;
                    default:
                        enumC1863q7 = EnumC1863q7.AD_FORMAT_TYPE_UNSPECIFIED;
                        break;
                }
                arrayList.add(enumC1863q7);
            }
        }
        ArrayList arrayList2 = new ArrayList(listAsList.size());
        for (Object obj3 : listAsList) {
            if (obj3 instanceof String) {
                arrayList2.add((String) obj3);
            }
        }
        listEmptyList = Collections.unmodifiableList(arrayList2);
        arrayList = new ArrayList();
        it = listEmptyList.iterator();
        while (true) {
            i8 = 3;
            if (it.hasNext()) {
                L6 l9 = (L6) Wp.f17323h.get(com.bumptech.glide.c.z("network", com.bumptech.glide.c.z("device", bundle)).getInt("active_network_state", -1), L6.UNSPECIFIED);
                wp = (Wp) this.f5730H;
                c6A = F6.A();
                i9 = bundle.getInt("cnt", -2);
                i10 = bundle.getInt("gnt", 0);
                if (i9 == -1) {
                    wp.f17328g = 2;
                } else {
                    wp.f17328g = 1;
                    if (i9 != 0) {
                        c6A.d();
                        F6.B((F6) c6A.f20255H, 2);
                    } else if (i9 != 1) {
                        c6A.d();
                        F6.B((F6) c6A.f20255H, 1);
                    } else {
                        c6A.d();
                        F6.B((F6) c6A.f20255H, 3);
                    }
                    switch (i10) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                        case 16:
                            i8 = 2;
                            break;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            break;
                        case 13:
                            i8 = 4;
                            break;
                        default:
                            i8 = 1;
                            break;
                    }
                    c6A.d();
                    F6.C((F6) c6A.f20255H, i8);
                }
                F6 f9 = (F6) c6A.b();
                Wp wp3 = (Wp) this.f5730H;
                ((Rp) wp3.f24906b).a(new C2246xc(this, arrayList, f9, l9, 15));
                return;
            }
            str = (String) it.next();
            str.getClass();
            switch (str) {
                case -1396342996:
                    if (str.equals("banner")) {
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                    }
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                    }
                    break;
            }
            /*  JADX ERROR: Method code generation error
                java.lang.NullPointerException: Switch insn not found in header
                	at java.base/java.util.Objects.requireNonNull(Objects.java:246)
                	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1612)
                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
                	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
                	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
                	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
                	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
                	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                */
            /*
                Method dump skipped, instruction units count: 392
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: P0.j.mo3zzb(java.lang.Object):void");
        }

        public j(D2 d6) {
            this.f5730H = d6;
            this.f5729G = true;
        }

        public /* synthetic */ j(Object obj, boolean z7) {
            this.f5729G = z7;
            this.f5730H = obj;
        }

        public /* synthetic */ j(boolean z7, Object obj) {
            this.f5729G = z7;
            this.f5730H = obj;
        }

        @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
        public final void zza(Throwable th) {
            p120p3.h.d("Failed to get signals bundle");
        }
    }
