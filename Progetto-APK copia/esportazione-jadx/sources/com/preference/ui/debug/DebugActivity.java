package com.preference.ui.debug;

import F.i;
import O1.C0312k;
import P0.j;
import Q5.b;
import T5.c;
import T5.f;
import T5.g;
import U5.a;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p000a.r;
import p039f.AbstractActivityC3000o;
import p039f.X;
import p086l.o1;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public class DebugActivity extends AbstractActivityC3000o implements g, c, a {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public RecyclerView f24580e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public f f24581f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public j f24582g0;

    @Override // Y.AbstractActivityC0409v, p000a.m, D.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i8;
        setTheme(R.style.PreferenceTheme);
        super.onCreate(bundle);
        setContentView(R.layout.activity_preference);
        setTitle("Debug");
        if (q() != null) {
            X xQ = q();
            xQ.getClass();
            o1 o1Var = (o1) xQ.f25008Q;
            int i9 = o1Var.f26324b;
            xQ.f25011T = true;
            o1Var.a((i9 & (-5)) | 4);
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.recyclerView);
        this.f24580e0 = recyclerView;
        recyclerView.i(new C0312k(this));
        j jVar = new j();
        jVar.f5730H = this;
        this.f24582g0 = jVar;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            jVar.f5729G = extras.getBoolean("editable", false);
        }
        j jVar2 = this.f24582g0;
        jVar2.getClass();
        ArrayList arrayList = new ArrayList();
        b bVarB = b.b();
        bVarB.getClass();
        HashMap map = new HashMap();
        ArrayList<R5.a> arrayList2 = new ArrayList();
        ArrayList<SharedPreferences> arrayList3 = new ArrayList();
        ArrayList<String> arrayList4 = new ArrayList();
        String[] list = new File(r.j(new StringBuilder(), b.b().f6041a.getApplicationInfo().dataDir, "/shared_prefs")).list();
        if (list != null) {
            for (String str : list) {
                arrayList4.add(str.substring(0, TextUtils.indexOf(str, ".xml")));
            }
        }
        for (String str2 : arrayList4) {
            SharedPreferences sharedPreferences = bVarB.f6041a.getSharedPreferences(str2, 0);
            map.put(sharedPreferences, str2);
            arrayList3.add(sharedPreferences);
        }
        for (SharedPreferences sharedPreferences2 : arrayList3) {
            Map<String, ?> all = sharedPreferences2.getAll();
            if (all.size() > 0) {
                ArrayList arrayList5 = new ArrayList();
                for (Map.Entry<String, ?> entry : all.entrySet()) {
                    Object value = entry.getValue();
                    if (value instanceof Boolean) {
                        i8 = 1;
                    } else {
                        i8 = 2;
                        if (!(value instanceof String)) {
                            if (value instanceof Integer) {
                                i8 = 5;
                            } else if (value instanceof Float) {
                                i8 = 4;
                            } else if (value instanceof Long) {
                                i8 = 3;
                            }
                        }
                    }
                    String key = entry.getKey();
                    Object value2 = entry.getValue();
                    String str3 = (String) map.get(sharedPreferences2);
                    R5.b bVar = new R5.b();
                    bVar.f6310H = key;
                    bVar.f6311I = value2;
                    bVar.f6309G = str3;
                    bVar.f6312J = i8;
                    arrayList5.add(bVar);
                }
                String str4 = (String) map.get(sharedPreferences2);
                R5.a aVar = new R5.a();
                aVar.f6307a = str4;
                aVar.f6308b = arrayList5;
                arrayList2.add(aVar);
            }
        }
        for (R5.a aVar2 : arrayList2) {
            String str5 = aVar2.f6307a;
            T5.b bVar2 = new T5.b();
            bVar2.f7492G = str5;
            bVar2.f7493H = aVar2.f6308b;
            arrayList.add(bVar2);
        }
        g gVar = (g) jVar2.f5730H;
        boolean z7 = jVar2.f5729G;
        DebugActivity debugActivity = (DebugActivity) gVar;
        debugActivity.getClass();
        f fVar = new f(arrayList, debugActivity, z7);
        debugActivity.f24581f0 = fVar;
        fVar.f();
        debugActivity.f24580e0.setAdapter(debugActivity.f24581f0);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.preference_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            ((DebugActivity) ((g) this.f24582g0.f5730H)).finish();
        } else if (itemId == R.id.expand_collapse) {
            if (menuItem.getTitle().toString().equalsIgnoreCase("expand")) {
                DebugActivity debugActivity = (DebugActivity) ((g) this.f24582g0.f5730H);
                debugActivity.getClass();
                menuItem.setTitle("collapse");
                debugActivity.f24581f0.f();
            } else {
                DebugActivity debugActivity2 = (DebugActivity) ((g) this.f24582g0.f5730H);
                debugActivity2.getClass();
                menuItem.setTitle("expand");
                f fVar = debugActivity2.f24581f0;
                for (W5.a aVar : (List) fVar.f7175I.f2977H) {
                    i iVar = fVar.f7176J.f7174b;
                    if (((boolean[]) iVar.f2978I)[((List) iVar.f2977H).indexOf(aVar)]) {
                        V5.a aVar2 = fVar.f7176J;
                        i iVar2 = aVar2.f7174b;
                        int iIndexOf = ((List) iVar2.f2977H).indexOf(aVar);
                        int iV = 0;
                        for (int i8 = 0; i8 < iIndexOf; i8++) {
                            iV += iVar2.v(i8);
                        }
                        W5.b bVarM = iVar2.m(iV);
                        if (((boolean[]) iVar2.f2978I)[bVarM.f7495a]) {
                            aVar2.a(bVarM);
                        } else {
                            aVar2.b(bVarM);
                        }
                    }
                }
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
