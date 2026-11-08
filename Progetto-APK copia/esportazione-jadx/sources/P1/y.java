package P1;

import android.database.Cursor;
import android.util.Log;
import androidx.work.impl.WorkDatabase_Impl;
import com.google.protobuf.U2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.TreeMap;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class y extends T1.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f5865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final K.k f5866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5867d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5868e;

    public y(c cVar, K.k kVar) {
        super(kVar.f4294H);
        this.f5865b = cVar;
        this.f5866c = kVar;
        this.f5867d = "5181942b9ebc31ce68dacb56c16fd79f";
        this.f5868e = "ae2044fb577e65ee8bb576ca48a2f06e";
    }

    @Override // T1.c
    public final void d(U1.c cVar) throws IOException {
        Cursor cursorE = cVar.E("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z7 = cursorE.moveToFirst() && cursorE.getInt(0) == 0;
            q0.k(cursorE, null);
            K.k kVar = this.f5866c;
            kVar.getClass();
            K.k.d(cVar);
            if (!z7) {
                P0.j jVarE = K.k.e(cVar);
                if (!jVarE.f5729G) {
                    throw new IllegalStateException("Pre-packaged database has an invalid schema: " + ((String) jVarE.f5730H));
                }
            }
            j(cVar);
            List list = ((WorkDatabase_Impl) kVar.f4295I).f5859f;
            if (list != null) {
                int size = list.size();
                for (int i8 = 0; i8 < size; i8++) {
                    ((w) ((WorkDatabase_Impl) kVar.f4295I).f5859f.get(i8)).getClass();
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                q0.k(cursorE, th);
                throw th2;
            }
        }
    }

    @Override // T1.c
    public final void e(U1.c cVar, int i8, int i9) throws IOException {
        g(cVar, i8, i9);
    }

    @Override // T1.c
    public final void f(U1.c cVar) throws IOException {
        Cursor cursorE = cVar.E("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z7 = cursorE.moveToFirst() && cursorE.getInt(0) != 0;
            q0.k(cursorE, null);
            if (z7) {
                Cursor cursorR = cVar.R(new T1.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
                try {
                    String string = cursorR.moveToFirst() ? cursorR.getString(0) : null;
                    q0.k(cursorR, null);
                    String str = this.f5867d;
                    if (!q0.c(str, string) && !q0.c(this.f5868e, string)) {
                        throw new IllegalStateException(U2.m("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: ", str, ", found: ", string));
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        q0.k(cursorR, th);
                        throw th2;
                    }
                }
            } else {
                this.f5866c.getClass();
                P0.j jVarE = K.k.e(cVar);
                if (!jVarE.f5729G) {
                    throw new IllegalStateException("Pre-packaged database has an invalid schema: " + ((String) jVarE.f5730H));
                }
                j(cVar);
            }
            K.k kVar = this.f5866c;
            ((WorkDatabase_Impl) kVar.f4295I).f5854a = cVar;
            cVar.f("PRAGMA foreign_keys = ON");
            WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) kVar.f4295I;
            workDatabase_Impl.getClass();
            l lVar = workDatabase_Impl.f5857d;
            lVar.getClass();
            synchronized (lVar.f5813l) {
                if (lVar.f5808g) {
                    Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                } else {
                    cVar.f("PRAGMA temp_store = MEMORY;");
                    cVar.f("PRAGMA recursive_triggers='ON';");
                    cVar.f("CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                    lVar.d(cVar);
                    lVar.f5809h = cVar.m("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1");
                    lVar.f5808g = true;
                }
            }
            List list = ((WorkDatabase_Impl) kVar.f4295I).f5859f;
            if (list != null) {
                int size = list.size();
                for (int i8 = 0; i8 < size; i8++) {
                    ((p034e2.b) ((w) ((WorkDatabase_Impl) kVar.f4295I).f5859f.get(i8))).getClass();
                    cVar.c();
                    try {
                        cVar.f("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + (System.currentTimeMillis() - p034e2.u.f24836a) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
                        cVar.x();
                        cVar.D();
                    } catch (Throwable th3) {
                        cVar.D();
                        throw th3;
                    }
                }
            }
            this.f5865b = null;
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                q0.k(cursorE, th4);
                throw th5;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:? A[LOOP:3: B:11:0x0026->B:101:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x006a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x005c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:15:0x002d  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    /* JADX WARN: Code duplicated, block: B:20:0x0044  */
    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    /* JADX WARN: Code duplicated, block: B:95:0x003b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x003b A[SYNTHETIC] */
    @Override // T1.c
    public final void g(U1.c cVar, int i8, int i9) throws IOException {
        Iterable iterable;
        TreeMap treeMap;
        Set setKeySet;
        Iterator it;
        boolean z7;
        Integer num;
        int i10;
        int iIntValue;
        int iIntValue2;
        c cVar2 = this.f5865b;
        K.k kVar = this.f5866c;
        if (cVar2 != null) {
            p032e0.u uVar = cVar2.f5779d;
            uVar.getClass();
            if (i8 == i9) {
                iterable = p162u6.q.f30542G;
            } else {
                boolean z8 = i9 > i8;
                ArrayList arrayList = new ArrayList();
                int iIntValue3 = i8;
                while (true) {
                    if (z8) {
                        if (iIntValue3 < i9) {
                            treeMap = (TreeMap) uVar.f24776a.get(Integer.valueOf(iIntValue3));
                            if (treeMap != null) {
                                if (z8) {
                                    setKeySet = treeMap.descendingKeySet();
                                } else {
                                    setKeySet = treeMap.keySet();
                                }
                                it = setKeySet.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        z7 = false;
                                        break;
                                    }
                                    num = (Integer) it.next();
                                    if (z8) {
                                        i10 = iIntValue3 + 1;
                                        q0.g(num, "targetVersion");
                                        iIntValue = num.intValue();
                                        if (i10 <= iIntValue && iIntValue <= i9) {
                                            Object obj = treeMap.get(num);
                                            q0.e(obj);
                                            arrayList.add(obj);
                                            iIntValue3 = num.intValue();
                                            z7 = true;
                                            break;
                                        }
                                    } else {
                                        q0.g(num, "targetVersion");
                                        iIntValue2 = num.intValue();
                                        if (i9 <= iIntValue2 && iIntValue2 < iIntValue3) {
                                            Object obj2 = treeMap.get(num);
                                            q0.e(obj2);
                                            arrayList.add(obj2);
                                            iIntValue3 = num.intValue();
                                            z7 = true;
                                            break;
                                            break;
                                        }
                                    }
                                }
                                if (!z7) {
                                }
                            }
                            iterable = null;
                        } else {
                            iterable = arrayList;
                        }
                    } else if (iIntValue3 > i9) {
                        treeMap = (TreeMap) uVar.f24776a.get(Integer.valueOf(iIntValue3));
                        if (treeMap != null) {
                            if (z8) {
                                setKeySet = treeMap.descendingKeySet();
                            } else {
                                setKeySet = treeMap.keySet();
                            }
                            it = setKeySet.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    z7 = false;
                                    break;
                                    break;
                                }
                                num = (Integer) it.next();
                                if (z8) {
                                    i10 = iIntValue3 + 1;
                                    q0.g(num, "targetVersion");
                                    iIntValue = num.intValue();
                                    if (i10 <= iIntValue) {
                                        continue;
                                    }
                                } else {
                                    q0.g(num, "targetVersion");
                                    iIntValue2 = num.intValue();
                                    if (i9 <= iIntValue2) {
                                        continue;
                                    }
                                }
                            }
                            if (!z7) {
                            }
                        }
                        iterable = null;
                    } else {
                        iterable = arrayList;
                    }
                }
            }
            if (iterable != null) {
                kVar.getClass();
                p169v6.c cVar3 = new p169v6.c(10);
                Cursor cursorE = cVar.E("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (cursorE.moveToNext()) {
                    try {
                        cVar3.add(cursorE.getString(0));
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            q0.k(cursorE, th);
                            throw th2;
                        }
                    }
                }
                q0.k(cursorE, null);
                cVar3.o();
                cVar3.f30738I = true;
                if (cVar3.f30737H <= 0) {
                    cVar3 = p169v6.c.f30735J;
                }
                ListIterator listIterator = cVar3.listIterator(0);
                while (true) {
                    p169v6.a aVar = (p169v6.a) listIterator;
                    if (!aVar.hasNext()) {
                        break;
                    }
                    String str = (String) aVar.next();
                    q0.g(str, "triggerName");
                    if (I6.k.U0(str, "room_fts_content_sync_", false)) {
                        cVar.f("DROP TRIGGER IF EXISTS ".concat(str));
                    }
                }
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    ((Q1.a) it2.next()).a(cVar);
                }
                P0.j jVarE = K.k.e(cVar);
                if (!jVarE.f5729G) {
                    throw new IllegalStateException("Migration didn't properly handle: " + ((String) jVarE.f5730H));
                }
                j(cVar);
                return;
            }
        }
        c cVar4 = this.f5865b;
        if (cVar4 == null || cVar4.a(i8, i9)) {
            throw new IllegalStateException("A migration from " + i8 + " to " + i9 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        kVar.getClass();
        cVar.f("DROP TABLE IF EXISTS `Dependency`");
        cVar.f("DROP TABLE IF EXISTS `WorkSpec`");
        cVar.f("DROP TABLE IF EXISTS `WorkTag`");
        cVar.f("DROP TABLE IF EXISTS `SystemIdInfo`");
        cVar.f("DROP TABLE IF EXISTS `WorkName`");
        cVar.f("DROP TABLE IF EXISTS `WorkProgress`");
        cVar.f("DROP TABLE IF EXISTS `Preference`");
        List list = ((WorkDatabase_Impl) kVar.f4295I).f5859f;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                ((w) ((WorkDatabase_Impl) kVar.f4295I).f5859f.get(i11)).getClass();
            }
        }
        K.k.d(cVar);
    }

    public final void j(U1.c cVar) {
        cVar.f("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        String str = this.f5867d;
        q0.h(str, "hash");
        cVar.f("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + str + "')");
    }

    @Override // T1.c
    public final void c(U1.c cVar) {
    }
}
