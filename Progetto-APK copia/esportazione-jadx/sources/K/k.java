package K;

import F2.z;
import N.r;
import W0.J;
import W0.t;
import android.graphics.Bitmap;
import android.util.Base64OutputStream;
import android.util.JsonWriter;
import androidx.work.impl.WorkDatabase_Impl;
import com.google.android.gms.internal.ads.AbstractC0774Ie;
import com.google.android.gms.internal.ads.C1127bw;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C1669mL;
import com.google.android.gms.internal.ads.C1980sL;
import com.google.android.gms.internal.ads.C2032tL;
import com.google.android.gms.internal.ads.C2065u2;
import com.google.android.gms.internal.ads.C2135vK;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.F;
import com.google.android.gms.internal.ads.Gy;
import com.google.android.gms.internal.ads.InterfaceC0959Vc;
import com.google.android.gms.internal.ads.InterfaceC1119bo;
import com.google.android.gms.internal.ads.InterfaceC1152cL;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.InterfaceC1255eL;
import com.google.android.gms.internal.ads.M;
import com.google.android.gms.internal.ads.P3;
import com.google.android.gms.internal.ads.RK;
import com.google.android.gms.internal.ads.S5;
import com.google.android.gms.internal.ads.T3;
import com.google.android.gms.internal.ads.U5;
import com.google.android.gms.internal.ads.V5;
import com.google.android.gms.internal.pal.AbstractC2737i4;
import com.google.android.gms.internal.pal.AbstractC2864y4;
import com.google.android.gms.internal.pal.C2767m2;
import com.google.android.gms.internal.pal.C2805r1;
import com.google.android.gms.internal.pal.InterfaceC2721g4;
import com.google.android.gms.internal.pal.J6;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.PriorityQueue;
import okhttp3.HttpUrl;
import p117p0.E;
import y2.D;

/* JADX INFO: loaded from: classes.dex */
public final class k implements J, I2.a, p120p3.f, InterfaceC1195dC, p052g4.b, InterfaceC1119bo, InterfaceC2721g4 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4293G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4294H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f4295I;

    public k(int i8) {
        this.f4293G = 8;
        this.f4295I = new U5();
        this.f4294H = i8;
    }

    public static k c() {
        return new k(17, 0);
    }

    public static void d(U1.c cVar) {
        cVar.f("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        cVar.f("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
        cVar.f("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
        cVar.f("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
        cVar.f("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
        cVar.f("CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
        cVar.f("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        cVar.f("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
        cVar.f("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        cVar.f("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        cVar.f("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
        cVar.f("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        cVar.f("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        cVar.f("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        cVar.f("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '5181942b9ebc31ce68dacb56c16fd79f')");
    }

    public static P0.j e(U1.c cVar) {
        HashMap map = new HashMap(2);
        map.put("work_spec_id", new R1.a(1, 1, "work_spec_id", "TEXT", null, true));
        map.put("prerequisite_id", new R1.a(2, 1, "prerequisite_id", "TEXT", null, true));
        HashSet hashSet = new HashSet(2);
        hashSet.add(new R1.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        hashSet.add(new R1.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
        HashSet hashSet2 = new HashSet(2);
        boolean z7 = false;
        hashSet2.add(new R1.d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        hashSet2.add(new R1.d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id"), Arrays.asList("ASC")));
        R1.e eVar = new R1.e("Dependency", map, hashSet, hashSet2);
        R1.e eVarA = R1.e.a(cVar, "Dependency");
        if (!eVar.equals(eVarA)) {
            return new P0.j(z7, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
        }
        HashMap map2 = new HashMap(27);
        map2.put("id", new R1.a(1, 1, "id", "TEXT", null, true));
        map2.put("state", new R1.a(0, 1, "state", "INTEGER", null, true));
        map2.put("worker_class_name", new R1.a(0, 1, "worker_class_name", "TEXT", null, true));
        map2.put("input_merger_class_name", new R1.a(0, 1, "input_merger_class_name", "TEXT", null, false));
        map2.put("input", new R1.a(0, 1, "input", "BLOB", null, true));
        map2.put("output", new R1.a(0, 1, "output", "BLOB", null, true));
        map2.put("initial_delay", new R1.a(0, 1, "initial_delay", "INTEGER", null, true));
        map2.put("interval_duration", new R1.a(0, 1, "interval_duration", "INTEGER", null, true));
        map2.put("flex_duration", new R1.a(0, 1, "flex_duration", "INTEGER", null, true));
        map2.put("run_attempt_count", new R1.a(0, 1, "run_attempt_count", "INTEGER", null, true));
        map2.put("backoff_policy", new R1.a(0, 1, "backoff_policy", "INTEGER", null, true));
        map2.put("backoff_delay_duration", new R1.a(0, 1, "backoff_delay_duration", "INTEGER", null, true));
        map2.put("last_enqueue_time", new R1.a(0, 1, "last_enqueue_time", "INTEGER", null, true));
        map2.put("minimum_retention_duration", new R1.a(0, 1, "minimum_retention_duration", "INTEGER", null, true));
        map2.put("schedule_requested_at", new R1.a(0, 1, "schedule_requested_at", "INTEGER", null, true));
        map2.put("run_in_foreground", new R1.a(0, 1, "run_in_foreground", "INTEGER", null, true));
        map2.put("out_of_quota_policy", new R1.a(0, 1, "out_of_quota_policy", "INTEGER", null, true));
        map2.put("period_count", new R1.a(0, 1, "period_count", "INTEGER", "0", true));
        map2.put("generation", new R1.a(0, 1, "generation", "INTEGER", "0", true));
        map2.put("required_network_type", new R1.a(0, 1, "required_network_type", "INTEGER", null, true));
        map2.put("requires_charging", new R1.a(0, 1, "requires_charging", "INTEGER", null, true));
        map2.put("requires_device_idle", new R1.a(0, 1, "requires_device_idle", "INTEGER", null, true));
        map2.put("requires_battery_not_low", new R1.a(0, 1, "requires_battery_not_low", "INTEGER", null, true));
        map2.put("requires_storage_not_low", new R1.a(0, 1, "requires_storage_not_low", "INTEGER", null, true));
        map2.put("trigger_content_update_delay", new R1.a(0, 1, "trigger_content_update_delay", "INTEGER", null, true));
        map2.put("trigger_max_content_delay", new R1.a(0, 1, "trigger_max_content_delay", "INTEGER", null, true));
        map2.put("content_uri_triggers", new R1.a(0, 1, "content_uri_triggers", "BLOB", null, true));
        HashSet hashSet3 = new HashSet(0);
        HashSet hashSet4 = new HashSet(2);
        hashSet4.add(new R1.d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at"), Arrays.asList("ASC")));
        hashSet4.add(new R1.d("index_WorkSpec_last_enqueue_time", false, Arrays.asList("last_enqueue_time"), Arrays.asList("ASC")));
        R1.e eVar2 = new R1.e("WorkSpec", map2, hashSet3, hashSet4);
        R1.e eVarA2 = R1.e.a(cVar, "WorkSpec");
        if (!eVar2.equals(eVarA2)) {
            return new P0.j(z7, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + eVar2 + "\n Found:\n" + eVarA2);
        }
        HashMap map3 = new HashMap(2);
        map3.put("tag", new R1.a(1, 1, "tag", "TEXT", null, true));
        map3.put("work_spec_id", new R1.a(2, 1, "work_spec_id", "TEXT", null, true));
        boolean z8 = true;
        HashSet hashSet5 = new HashSet(1);
        hashSet5.add(new R1.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        HashSet hashSet6 = new HashSet(1);
        hashSet6.add(new R1.d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        R1.e eVar3 = new R1.e("WorkTag", map3, hashSet5, hashSet6);
        R1.e eVarA3 = R1.e.a(cVar, "WorkTag");
        if (!eVar3.equals(eVarA3)) {
            return new P0.j(z7, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + eVar3 + "\n Found:\n" + eVarA3);
        }
        HashMap map4 = new HashMap(3);
        map4.put("work_spec_id", new R1.a(1, 1, "work_spec_id", "TEXT", null, true));
        map4.put("generation", new R1.a(2, 1, "generation", "INTEGER", "0", true));
        map4.put("system_id", new R1.a(0, 1, "system_id", "INTEGER", null, true));
        HashSet hashSet7 = new HashSet(1);
        hashSet7.add(new R1.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        R1.e eVar4 = new R1.e("SystemIdInfo", map4, hashSet7, new HashSet(0));
        R1.e eVarA4 = R1.e.a(cVar, "SystemIdInfo");
        if (!eVar4.equals(eVarA4)) {
            return new P0.j(z7, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + eVar4 + "\n Found:\n" + eVarA4);
        }
        HashMap map5 = new HashMap(2);
        map5.put("name", new R1.a(1, 1, "name", "TEXT", null, true));
        map5.put("work_spec_id", new R1.a(2, 1, "work_spec_id", "TEXT", null, true));
        HashSet hashSet8 = new HashSet(1);
        hashSet8.add(new R1.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        HashSet hashSet9 = new HashSet(1);
        hashSet9.add(new R1.d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
        R1.e eVar5 = new R1.e("WorkName", map5, hashSet8, hashSet9);
        R1.e eVarA5 = R1.e.a(cVar, "WorkName");
        if (!eVar5.equals(eVarA5)) {
            return new P0.j(z7, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + eVar5 + "\n Found:\n" + eVarA5);
        }
        HashMap map6 = new HashMap(2);
        map6.put("work_spec_id", new R1.a(1, 1, "work_spec_id", "TEXT", null, true));
        map6.put("progress", new R1.a(0, 1, "progress", "BLOB", null, true));
        HashSet hashSet10 = new HashSet(1);
        hashSet10.add(new R1.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
        R1.e eVar6 = new R1.e("WorkProgress", map6, hashSet10, new HashSet(0));
        R1.e eVarA6 = R1.e.a(cVar, "WorkProgress");
        if (!eVar6.equals(eVarA6)) {
            return new P0.j(z7, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + eVar6 + "\n Found:\n" + eVarA6);
        }
        HashMap map7 = new HashMap(2);
        map7.put("key", new R1.a(1, 1, "key", "TEXT", null, true));
        map7.put("long_value", new R1.a(0, 1, "long_value", "INTEGER", null, false));
        R1.e eVar7 = new R1.e("Preference", map7, new HashSet(0), new HashSet(0));
        R1.e eVarA7 = R1.e.a(cVar, "Preference");
        if (eVar7.equals(eVarA7)) {
            return new P0.j(z8, (Object) null);
        }
        return new P0.j(z7, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + eVar7 + "\n Found:\n" + eVarA7);
    }

    public static k i(int i8) {
        int i9 = i8 - 1;
        int i10 = 1;
        int i11 = 15;
        int i12 = 8;
        if (i9 != 0) {
            return i9 != 1 ? new k(new C2805r1("HmacSha512", i12), 3, i11) : new k(new C2805r1("HmacSha384", i12), 2, i11);
        }
        return new k(new C2805r1("HmacSha256", i12), i10, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v6, types: [byte[], java.lang.Cloneable] */
    @Override // com.google.android.gms.internal.pal.InterfaceC2721g4
    public final C2767m2 a(byte[] bArr) throws GeneralSecurityException {
        ECParameterSpec eCParameterSpecC0 = AbstractC2864y4.C0(this.f4294H);
        KeyPairGenerator keyPairGenerator = (KeyPairGenerator) J6.f23572h.a("EC");
        keyPairGenerator.initialize(eCParameterSpecC0);
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        byte[] bArrS0 = AbstractC2864y4.s0((ECPrivateKey) keyPairGenerateKeyPair.getPrivate(), AbstractC2864y4.z0(AbstractC2864y4.C0(this.f4294H), bArr));
        ?? E7 = AbstractC2864y4.E0(AbstractC2864y4.C0(this.f4294H).getCurve(), 1, ((ECPublicKey) keyPairGenerateKeyPair.getPublic()).getW());
        byte[] bArrY = AbstractC2864y4.Y(E7, bArr);
        byte[] bArrY2 = AbstractC2864y4.Y(AbstractC2737i4.f23869m, zzb());
        C2805r1 c2805r1 = (C2805r1) this.f4295I;
        int iB = c2805r1.b();
        Charset charset = StandardCharsets.UTF_8;
        byte[] bytes = "eae_prk".getBytes(charset);
        byte[] bArr2 = AbstractC2737i4.f23871o;
        return new C2767m2(5, c2805r1.f(iB, c2805r1.g(AbstractC2864y4.Y(bArr2, bArrY2, bytes, bArrS0), null), AbstractC2864y4.Y(AbstractC2737i4.b(2, iB), bArr2, bArrY2, "shared_secret".getBytes(charset), bArrY)), E7);
    }

    public final S4.a b() {
        return new S4.a(this.f4294H, (S4.d) this.f4295I);
    }

    public final long f(t tVar) {
        int i8 = 0;
        tVar.c(0, ((E) this.f4295I).f28035a, 1);
        int i9 = ((E) this.f4295I).f28035a[0] & 255;
        if (i9 == 0) {
            return Long.MIN_VALUE;
        }
        int i10 = 128;
        int i11 = 0;
        while ((i9 & i10) == 0) {
            i10 >>= 1;
            i11++;
        }
        int i12 = i9 & (~i10);
        tVar.c(1, ((E) this.f4295I).f28035a, i11);
        while (i8 < i11) {
            i8++;
            i12 = (((E) this.f4295I).f28035a[i8] & 255) + (i12 << 8);
        }
        this.f4294H = i11 + 1 + this.f4294H;
        return i12;
    }

    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    public final String g(ArrayList arrayList) {
        k kVar = this;
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        ?? r7 = 0;
        byte b8 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            sb.append(((String) arrayList.get(i8)).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] strArrSplit = sb.toString().split("\n");
        if (strArrSplit.length == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        C2218x c2218x = new C2218x(11);
        PriorityQueue priorityQueue = new PriorityQueue(kVar.f4294H, new C2065u2(3, b8 == true ? 1 : 0));
        int i9 = 0;
        while (i9 < strArrSplit.length) {
            String[] strArrQ = a7.b.q(strArrSplit[i9], r7);
            if (strArrQ.length != 0) {
                int i10 = kVar.f4294H;
                int length = strArrQ.length;
                int i11 = 6;
                if (length < 6) {
                    U4.a.u(i10, U4.a.v(strArrQ, length), U4.a.p(strArrQ, r7, length), length, priorityQueue);
                } else {
                    long jV = U4.a.v(strArrQ, 6);
                    U4.a.u(i10, jV, U4.a.p(strArrQ, r7, 6), 6, priorityQueue);
                    long j8 = jV;
                    int i12 = 1;
                    while (true) {
                        int length2 = strArrQ.length;
                        if (i12 < length2 - 5) {
                            long jM = a7.b.m(strArrQ[i12 - 1]);
                            long jM2 = a7.b.m(strArrQ[i12 + 5]);
                            String strP = U4.a.p(strArrQ, i12, i11);
                            String[] strArr = strArrSplit;
                            long jG = (((jM2 + 2147483647L) % 1073807359) + (((((j8 + 1073807359) - ((((jM + 2147483647L) % 1073807359) * U4.a.g(5, 16785407L)) % 1073807359)) % 1073807359) * 16785407) % 1073807359)) % 1073807359;
                            U4.a.u(i10, jG, strP, length2, priorityQueue);
                            i12++;
                            i11 = 6;
                            i9 = i9;
                            j8 = jG;
                            strArrSplit = strArr;
                        }
                    }
                }
            }
            i9++;
            r7 = 0;
            kVar = this;
            strArrSplit = strArrSplit;
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                ((Base64OutputStream) c2218x.f21780I).write(((S5) this.f4295I).b(((V5) it.next()).f16957b));
            } catch (IOException e8) {
                p120p3.h.e("Error while writing hash to byteStream", e8);
            }
        }
        return c2218x.toString();
    }

    public final long h(M m7) {
        int i8;
        F f8 = (F) m7;
        int i9 = 0;
        f8.d(((C1534jr) this.f4295I).f19515a, 0, 1, false);
        int i10 = ((C1534jr) this.f4295I).f19515a[0] & 255;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int i11 = 128;
        int i12 = 0;
        while (true) {
            i8 = i12 + 1;
            if ((i10 & i11) != 0) {
                break;
            }
            i11 >>= 1;
            i12 = i8;
        }
        int i13 = i10 & (~i11);
        f8.d(((C1534jr) this.f4295I).f19515a, 1, i12, false);
        while (i9 < i12) {
            i9++;
            i13 = (((C1534jr) this.f4295I).f19515a[i9] & 255) + (i13 << 8);
        }
        this.f4294H += i8;
        return i13;
    }

    @Override // I2.a
    public final D k(D d6, p173w2.l lVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) d6.get()).compress((Bitmap.CompressFormat) this.f4295I, this.f4294H, byteArrayOutputStream);
        d6.b();
        return new z(byteArrayOutputStream.toByteArray());
    }

    @Override // p120p3.f
    public final void m(JsonWriter jsonWriter) throws IOException {
        int i8 = this.f4294H;
        Map map = (Map) this.f4295I;
        Object obj = p120p3.g.f28212b;
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i8);
        jsonWriter.endObject();
        p120p3.g.e(jsonWriter, map);
        jsonWriter.endObject();
    }

    @Override // p052g4.b
    public final Object then(p052g4.h hVar) {
        if (!hVar.h()) {
            return Boolean.FALSE;
        }
        int i8 = this.f4294H;
        P3 p7 = (P3) this.f4295I;
        Gy gy = (Gy) hVar.f();
        byte[] bArrD = ((T3) p7.b()).d();
        gy.getClass();
        p016c.g gVar = new p016c.g(gy, bArrD, 11);
        gVar.f10555I = i8;
        gVar.n();
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
    public final void zza(Object obj) {
        Object obj2 = null;
        int i8 = 1;
        switch (this.f4293G) {
            case 12:
                int i9 = C2135vK.f21463U;
                AbstractC0774Ie abstractC0774Ie = ((RK) this.f4295I).f16239a;
                C2032tL c2032tL = (C2032tL) ((InterfaceC1152cL) obj);
                InterfaceC0959Vc interfaceC0959Vc = c2032tL.f21062M;
                interfaceC0959Vc.getClass();
                C1980sL c1980sL = c2032tL.f21059J;
                c1980sL.f20884d = C1980sL.a(interfaceC0959Vc, c1980sL.f20882b, c1980sL.f20885e, c1980sL.f20881a);
                c1980sL.c(interfaceC0959Vc.zzn());
                c2032tL.i(c2032tL.d(), 0, new C1669mL(i8, obj2));
                break;
            case 13:
                int i10 = C2135vK.f21463U;
                C2032tL c2032tL2 = (C2032tL) ((InterfaceC1152cL) obj);
                c2032tL2.i(c2032tL2.d(), 1, new C1669mL(obj2));
                break;
            default:
                ((InterfaceC1255eL) obj).q(this.f4294H);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final /* bridge */ /* synthetic */ void mo3zzb(Object obj) {
        int i8 = this.f4294H;
        ((C1127bw) this.f4295I).b(i8, (String) obj);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2721g4
    public final byte[] zzb() {
        int i8 = this.f4294H - 1;
        if (i8 != 0) {
            return i8 != 1 ? AbstractC2737i4.f23861e : AbstractC2737i4.f23860d;
        }
        return AbstractC2737i4.f23859c;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public k(int i8, int i9) {
        this.f4293G = i8;
        if (i8 == 3) {
            throw new UnsupportedOperationException();
        }
        int i10 = 5;
        if (i8 == 5) {
            this(Bitmap.CompressFormat.JPEG, 100, i10);
            return;
        }
        if (i8 == 7) {
            this.f4295I = new C1534jr(8);
            return;
        }
        if (i8 == 17) {
            this.f4295I = S4.d.f6437G;
        } else if (i8 != 19) {
            this.f4295I = new E(8);
        } else {
            this.f4294H = 0;
            this.f4295I = F5.h.f3250G;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        p083k3.l.f25980A.f25987g.i("BufferingUrlPinger.attributionReportingManager", th);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(int i8, r rVar, int i9) {
        this(i8, rVar);
        this.f4293G = 18;
    }

    public /* synthetic */ k(int i8, Object obj, int i9) {
        this.f4293G = i9;
        this.f4294H = i8;
        this.f4295I = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(r rVar, r rVar2) {
        this(rVar, rVar2, 0);
        this.f4293G = 18;
    }

    public /* synthetic */ k(Object obj, int i8, int i9) {
        this.f4293G = i9;
        this.f4295I = obj;
        this.f4294H = i8;
    }

    public k(int[] iArr, int i8) {
        C4.a aVar;
        this.f4293G = 2;
        this.f4294H = i8;
        if (iArr != null) {
            C4.a aVar2 = C4.a.f1627I;
            aVar = iArr.length == 0 ? C4.a.f1627I : new C4.a(Arrays.copyOf(iArr, iArr.length));
        } else {
            aVar = C4.a.f1627I;
        }
        this.f4295I = aVar;
    }

    public k(int i8, r rVar) {
        this.f4293G = 18;
        this.f4294H = i8;
        this.f4295I = new r[]{rVar};
    }

    public k(r rVar, r rVar2, int i8) {
        this.f4293G = 18;
        this.f4294H = 62;
        this.f4295I = new r[]{rVar, rVar2};
    }

    public k(WorkDatabase_Impl workDatabase_Impl) {
        this.f4293G = 4;
        this.f4295I = workDatabase_Impl;
        this.f4294H = 16;
    }

    public k() {
        this.f4293G = 0;
        this.f4294H = 1;
        this.f4295I = Collections.singletonList(null);
    }
}
