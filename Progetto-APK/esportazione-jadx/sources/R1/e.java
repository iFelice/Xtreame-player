package R1;

import android.database.Cursor;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import p162u6.o;
import p162u6.r;
import p169v6.f;
import p169v6.i;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f6278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f6279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f6280d;

    public e(String str, Map map, AbstractSet abstractSet, AbstractSet abstractSet2) {
        q0.h(abstractSet, "foreignKeys");
        this.f6277a = str;
        this.f6278b = map;
        this.f6279c = abstractSet;
        this.f6280d = abstractSet2;
    }

    public static final e a(U1.c cVar, String str) {
        Map mapB;
        List listAsList;
        i iVarJ;
        i iVar;
        String str2;
        int i8;
        int i9;
        Throwable th;
        d dVar;
        U1.c cVar2 = cVar;
        StringBuilder sb = new StringBuilder("PRAGMA table_info(`");
        sb.append(str);
        String str3 = "`)";
        sb.append("`)");
        Cursor cursorE = cVar2.E(sb.toString());
        try {
            String str4 = "name";
            if (cursorE.getColumnCount() <= 0) {
                mapB = r.f30543G;
                q0.k(cursorE, null);
            } else {
                int columnIndex = cursorE.getColumnIndex("name");
                int columnIndex2 = cursorE.getColumnIndex("type");
                int columnIndex3 = cursorE.getColumnIndex("notnull");
                int columnIndex4 = cursorE.getColumnIndex("pk");
                int columnIndex5 = cursorE.getColumnIndex("dflt_value");
                f fVar = new f();
                while (cursorE.moveToNext()) {
                    String string = cursorE.getString(columnIndex);
                    String string2 = cursorE.getString(columnIndex2);
                    boolean z7 = cursorE.getInt(columnIndex3) != 0;
                    int i10 = cursorE.getInt(columnIndex4);
                    String string3 = cursorE.getString(columnIndex5);
                    q0.g(string, "name");
                    q0.g(string2, "type");
                    fVar.put(string, new a(i10, 2, string, string2, string3, z7));
                    columnIndex = columnIndex;
                }
                mapB = fVar.b();
                q0.k(cursorE, null);
            }
            Cursor cursorE2 = cVar2.E("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = cursorE2.getColumnIndex("id");
                int columnIndex7 = cursorE2.getColumnIndex("seq");
                int columnIndex8 = cursorE2.getColumnIndex("table");
                int columnIndex9 = cursorE2.getColumnIndex("on_delete");
                int columnIndex10 = cursorE2.getColumnIndex("on_update");
                int columnIndex11 = cursorE2.getColumnIndex("id");
                int columnIndex12 = cursorE2.getColumnIndex("seq");
                int columnIndex13 = cursorE2.getColumnIndex("from");
                int columnIndex14 = cursorE2.getColumnIndex("to");
                Map map = mapB;
                p169v6.c cVar3 = new p169v6.c(10);
                while (cursorE2.moveToNext()) {
                    String str5 = str4;
                    int i11 = cursorE2.getInt(columnIndex11);
                    int i12 = columnIndex11;
                    int i13 = cursorE2.getInt(columnIndex12);
                    int i14 = columnIndex12;
                    String string4 = cursorE2.getString(columnIndex13);
                    int i15 = columnIndex13;
                    q0.g(string4, "cursor.getString(fromColumnIndex)");
                    String string5 = cursorE2.getString(columnIndex14);
                    q0.g(string5, "cursor.getString(toColumnIndex)");
                    cVar3.add(new c(i11, i13, string4, string5));
                    str4 = str5;
                    columnIndex11 = i12;
                    columnIndex12 = i14;
                    columnIndex13 = i15;
                    columnIndex14 = columnIndex14;
                }
                String str6 = str4;
                cVar3.o();
                cVar3.f30738I = true;
                if (cVar3.f30737H <= 0) {
                    cVar3 = p169v6.c.f30735J;
                }
                q0.h(cVar3, "<this>");
                if (cVar3.b() <= 1) {
                    listAsList = o.C(cVar3);
                } else {
                    Object[] array = cVar3.toArray(new Comparable[0]);
                    Comparable[] comparableArr = (Comparable[]) array;
                    if (comparableArr.length > 1) {
                        Arrays.sort(comparableArr);
                    }
                    listAsList = Arrays.asList(array);
                    q0.g(listAsList, "asList(...)");
                }
                cursorE2.moveToPosition(-1);
                i iVar2 = new i();
                while (cursorE2.moveToNext()) {
                    if (cursorE2.getInt(columnIndex7) == 0) {
                        int i16 = cursorE2.getInt(columnIndex6);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList<c> arrayList3 = new ArrayList();
                        for (Object obj : listAsList) {
                            List list = listAsList;
                            if (((c) obj).f6269G == i16) {
                                arrayList3.add(obj);
                            }
                            listAsList = list;
                        }
                        List list2 = listAsList;
                        for (c cVar4 : arrayList3) {
                            arrayList.add(cVar4.f6271I);
                            arrayList2.add(cVar4.f6272J);
                        }
                        String string6 = cursorE2.getString(columnIndex8);
                        q0.g(string6, "cursor.getString(tableColumnIndex)");
                        String string7 = cursorE2.getString(columnIndex9);
                        q0.g(string7, "cursor.getString(onDeleteColumnIndex)");
                        String string8 = cursorE2.getString(columnIndex10);
                        q0.g(string8, "cursor.getString(onUpdateColumnIndex)");
                        iVar2.add(new b(string6, string7, string8, arrayList, arrayList2));
                        columnIndex6 = columnIndex6;
                        listAsList = list2;
                    }
                }
                i iVarJ2 = k.j(iVar2);
                q0.k(cursorE2, null);
                Cursor cursorE3 = cVar2.E("PRAGMA index_list(`" + str + "`)");
                String str7 = str6;
                try {
                    int columnIndex15 = cursorE3.getColumnIndex(str7);
                    int columnIndex16 = cursorE3.getColumnIndex("origin");
                    int columnIndex17 = cursorE3.getColumnIndex("unique");
                    if (columnIndex15 == -1 || columnIndex16 == -1 || columnIndex17 == -1) {
                        iVarJ = null;
                        q0.k(cursorE3, null);
                    } else {
                        i iVar3 = new i();
                        while (cursorE3.moveToNext()) {
                            if (q0.c("c", cursorE3.getString(columnIndex16))) {
                                String string9 = cursorE3.getString(columnIndex15);
                                boolean z8 = cursorE3.getInt(columnIndex17) == 1;
                                q0.g(string9, str7);
                                Cursor cursorE4 = cVar2.E("PRAGMA index_xinfo(`" + string9 + str3);
                                try {
                                    int columnIndex18 = cursorE4.getColumnIndex("seqno");
                                    int columnIndex19 = cursorE4.getColumnIndex("cid");
                                    int columnIndex20 = cursorE4.getColumnIndex(str7);
                                    int columnIndex21 = cursorE4.getColumnIndex("desc");
                                    String str8 = str7;
                                    if (columnIndex18 == -1 || columnIndex19 == -1 || columnIndex20 == -1 || columnIndex21 == -1) {
                                        str2 = str3;
                                        i8 = columnIndex16;
                                        i9 = columnIndex17;
                                        th = null;
                                        q0.k(cursorE4, null);
                                        dVar = null;
                                    } else {
                                        TreeMap treeMap = new TreeMap();
                                        TreeMap treeMap2 = new TreeMap();
                                        while (cursorE4.moveToNext()) {
                                            if (cursorE4.getInt(columnIndex19) >= 0) {
                                                int i17 = cursorE4.getInt(columnIndex18);
                                                String str9 = str3;
                                                String string10 = cursorE4.getString(columnIndex20);
                                                int i18 = columnIndex21;
                                                String str10 = cursorE4.getInt(columnIndex21) > 0 ? "DESC" : "ASC";
                                                int i19 = columnIndex16;
                                                Integer numValueOf = Integer.valueOf(i17);
                                                q0.g(string10, "columnName");
                                                treeMap.put(numValueOf, string10);
                                                treeMap2.put(Integer.valueOf(i17), str10);
                                                str3 = str9;
                                                columnIndex16 = i19;
                                                columnIndex21 = i18;
                                                columnIndex17 = columnIndex17;
                                            }
                                        }
                                        str2 = str3;
                                        i8 = columnIndex16;
                                        i9 = columnIndex17;
                                        Collection collectionValues = treeMap.values();
                                        q0.g(collectionValues, "columnsMap.values");
                                        List listC = o.C(collectionValues);
                                        Collection collectionValues2 = treeMap2.values();
                                        q0.g(collectionValues2, "ordersMap.values");
                                        dVar = new d(string9, z8, listC, o.C(collectionValues2));
                                        q0.k(cursorE4, null);
                                        th = null;
                                    }
                                    if (dVar == null) {
                                        q0.k(cursorE3, th);
                                        iVar = null;
                                        return new e(str, map, iVarJ2, iVar);
                                    }
                                    iVar3.add(dVar);
                                    cVar2 = cVar;
                                    str7 = str8;
                                    columnIndex15 = columnIndex15;
                                    str3 = str2;
                                    columnIndex16 = i8;
                                    columnIndex17 = i9;
                                } catch (Throwable th2) {
                                    try {
                                        throw th2;
                                    } catch (Throwable th3) {
                                        q0.k(cursorE4, th2);
                                        throw th3;
                                    }
                                }
                            }
                        }
                        iVarJ = k.j(iVar3);
                        q0.k(cursorE3, null);
                    }
                    iVar = iVarJ;
                    return new e(str, map, iVarJ2, iVar);
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        q0.k(cursorE3, th4);
                        throw th5;
                    }
                }
            } catch (Throwable th6) {
                try {
                    throw th6;
                } catch (Throwable th7) {
                    q0.k(cursorE2, th6);
                    throw th7;
                }
            }
        } catch (Throwable th8) {
            try {
                throw th8;
            } catch (Throwable th9) {
                q0.k(cursorE, th8);
                throw th9;
            }
        }
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (!q0.c(this.f6277a, eVar.f6277a) || !q0.c(this.f6278b, eVar.f6278b) || !q0.c(this.f6279c, eVar.f6279c)) {
            return false;
        }
        Set set2 = this.f6280d;
        if (set2 == null || (set = eVar.f6280d) == null) {
            return true;
        }
        return q0.c(set2, set);
    }

    public final int hashCode() {
        return this.f6279c.hashCode() + ((this.f6278b.hashCode() + (this.f6277a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "TableInfo{name='" + this.f6277a + "', columns=" + this.f6278b + ", foreignKeys=" + this.f6279c + ", indices=" + this.f6280d + '}';
    }
}
