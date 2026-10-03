package b7;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import com.google.gson.Gson;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class t1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ boolean f10491G = true;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f10492H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ boolean f10493I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ boolean f10494J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ A1 f10495K;

    public t1(String str, A1 a8, boolean z7, boolean z8) {
        this.f10495K = a8;
        this.f10492H = str;
        this.f10493I = z7;
        this.f10494J = z8;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0195  */
    /* JADX WARN: Code duplicated, block: B:38:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:41:0x01bd A[LOOP:2: B:39:0x01b7->B:41:0x01bd, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x01bd, please report this as an issue */
    @Override // java.lang.Runnable
    public final void run() {
        Cursor cursorRawQuery;
        int i8;
        int i9;
        ArrayList arrayList = new ArrayList();
        A1 a8 = this.f10495K;
        a8.f9952L0 = arrayList;
        arrayList.clear();
        z4.q0.q().g("ORT_WHICH_CAT", "TV");
        int i10 = 0;
        int i11 = 1;
        boolean z7 = this.f10491G;
        String str = this.f10492H;
        if (z7) {
            a8.f9953M0.clear();
            ArrayList arrayListU = z4.q0.u(a8.l(), true, str, "ASC", "0");
            a8.f9953M0 = arrayListU;
            if (arrayListU.size() > 0) {
                HashMap mapM = p000a.r.m("category_name", "LIVE TV", "category_id", "0000001");
                mapM.put("parent_id", "0");
                a8.f9952L0.add(mapM);
                ArrayList arrayList2 = a8.f9953M0;
                Context contextL = a8.l();
                SharedPreferences sharedPreferences = Methods.f29416a;
                SharedPreferences.Editor editorEdit = contextL.getSharedPreferences("pe.hf.black20", 0).edit();
                editorEdit.putString("tv_arraylist_search", new Gson().toJson(arrayList2));
                editorEdit.apply();
            }
        }
        if (this.f10493I) {
            a8.f9954N0.clear();
            a8.f9954N0 = p190y4.k.M(a8.l(), true, this.f10492H, "ASC", "00000", HttpUrl.FRAGMENT_ENCODE_SET);
            a8.f9955O0.clear();
            a8.f9955O0 = a7.b.e(a8.l(), true, this.f10492H, "ASC", "0000", "0");
            if (a8.f9954N0.size() > 0) {
                HashMap mapM2 = p000a.r.m("category_name", "MOVIES", "category_id", "0000004");
                mapM2.put("parent_id", "0");
                a8.f9952L0.add(mapM2);
            }
            if (a8.f9955O0.size() > 0) {
                HashMap mapM3 = p000a.r.m("category_name", "TV SHOWS", "category_id", "0000005");
                mapM3.put("parent_id", "0");
                a8.f9952L0.add(mapM3);
            }
        }
        a8.j().runOnUiThread(new s1(this, i10));
        int i12 = 3;
        if (!this.f10494J) {
            a8.j().runOnUiThread(new s1(this, i12));
            return;
        }
        HashMap mapM4 = p000a.r.m("category_name", "TV GUIDE RESULT", "category_id", "0000006");
        mapM4.put("parent_id", "0");
        a8.f9952L0.add(mapM4);
        a8.j().runOnUiThread(new s1(this, i11));
        p133r0.b bVar = new p133r0.b(a8.l(), 1);
        new ArrayList().clear();
        String[] strArr = {p000a.r.g("%", str, "%"), new SimpleDateFormat("yyyyMMddHHmmss Z").format(new Date())};
        ArrayList arrayList3 = new ArrayList();
        arrayList3.clear();
        int i13 = 2;
        try {
            cursorRawQuery = bVar.getWritableDatabase().rawQuery("SELECT * FROM epgdb WHERE title LIKE ? AND stop >? GROUP BY title", strArr);
            try {
                if (cursorRawQuery.moveToFirst()) {
                    do {
                        d7.g gVar = new d7.g();
                        gVar.f24677a = cursorRawQuery.getString(1);
                        gVar.f24678b = cursorRawQuery.getString(2);
                        gVar.f24679c = cursorRawQuery.getString(3);
                        gVar.f24680d = cursorRawQuery.getString(4);
                        gVar.f24681e = cursorRawQuery.getString(5);
                        arrayList3.add(gVar);
                    } while (cursorRawQuery.moveToNext());
                }
                if (!cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            } catch (Throwable unused) {
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                }
                if (arrayList3.size() > 0) {
                    a8.f9956P0 = null;
                    a8.f9956P0 = new ArrayList();
                    Methods.F();
                    a8.f9957Q0 = z4.q0.u(a8.l(), false, "all", "ASC", "0");
                    for (i8 = 0; i8 < a8.f9957Q0.size(); i8++) {
                        for (i9 = 0; i9 < arrayList3.size(); i9++) {
                            HashMap map = new HashMap();
                            map.put("title", ((d7.g) arrayList3.get(i9)).f24680d);
                            map.put("description", ((d7.g) arrayList3.get(i9)).f24681e);
                            map.put("pr_time", "Start: " + Methods.q(((d7.g) arrayList3.get(i9)).f24677a));
                            map.put("channel", ((d7.g) arrayList3.get(i9)).f24679c);
                            map.put("name", (String) ((HashMap) a8.f9957Q0.get(i8)).get("name"));
                            map.put("stream_icon", (String) ((HashMap) a8.f9957Q0.get(i8)).get("stream_icon"));
                            a8.f9956P0.add(map);
                        }
                    }
                }
                a8.j().runOnUiThread(new s1(this, i13));
            }
        } catch (Throwable unused2) {
            cursorRawQuery = null;
        }
        if (arrayList3.size() > 0) {
            a8.f9956P0 = null;
            a8.f9956P0 = new ArrayList();
            Methods.F();
            a8.f9957Q0 = z4.q0.u(a8.l(), false, "all", "ASC", "0");
            while (i8 < a8.f9957Q0.size()) {
                while (i9 < arrayList3.size()) {
                    HashMap map2 = new HashMap();
                    map2.put("title", ((d7.g) arrayList3.get(i9)).f24680d);
                    map2.put("description", ((d7.g) arrayList3.get(i9)).f24681e);
                    map2.put("pr_time", "Start: " + Methods.q(((d7.g) arrayList3.get(i9)).f24677a));
                    map2.put("channel", ((d7.g) arrayList3.get(i9)).f24679c);
                    map2.put("name", (String) ((HashMap) a8.f9957Q0.get(i8)).get("name"));
                    map2.put("stream_icon", (String) ((HashMap) a8.f9957Q0.get(i8)).get("stream_icon"));
                    a8.f9956P0.add(map2);
                }
            }
        }
        a8.j().runOnUiThread(new s1(this, i13));
    }
}
