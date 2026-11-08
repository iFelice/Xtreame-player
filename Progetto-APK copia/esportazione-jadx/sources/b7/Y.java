package b7;

import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import org.json.JSONArray;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class Y extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MultiScreenActivityEXO f10253b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Y(MultiScreenActivityEXO multiScreenActivityEXO) {
        this(multiScreenActivityEXO, 0);
        this.f10252a = 0;
    }

    public final void a() {
        String str;
        Object obj;
        Object obj2;
        Object obj3;
        String str2;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        int i8 = this.f10252a;
        String str3 = "locked";
        String str4 = "ORT_PARENTAL_CONTROL_STATUS";
        String str5 = "TV";
        String str6 = "yes";
        MultiScreenActivityEXO multiScreenActivityEXO = this.f10253b;
        switch (i8) {
            case 0:
                String str7 = "locked";
                String str8 = "ORT_PARENTAL_CONTROL_STATUS";
                String str9 = "TV";
                Object obj8 = "yes";
                multiScreenActivityEXO.f28743l1.clear();
                multiScreenActivityEXO.f28743l1 = multiScreenActivityEXO.f28731f1.q0();
                multiScreenActivityEXO.f28745m1 = new ArrayList();
                int i9 = 0;
                while (i9 < multiScreenActivityEXO.f28743l1.size()) {
                    if (i9 == 0) {
                        HashMap map = new HashMap();
                        map.put("category_id", "99999");
                        map.put("category_name", multiScreenActivityEXO.f28668G.getString(R.string.xc_favorites));
                        map.put("parent_id", "0");
                        multiScreenActivityEXO.f28745m1.add(map);
                    }
                    String str10 = str8;
                    String str11 = str7;
                    boolean z7 = U2.z(str10, str11, str11);
                    String str12 = multiScreenActivityEXO.f28751p1;
                    if (z7) {
                        str = str9;
                        obj = obj8;
                        if (!multiScreenActivityEXO.f28733g1.N(((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25421a, str, multiScreenActivityEXO.f28739j1.f25478a).equals(obj)) {
                            if (!str12.equals("Yes")) {
                                HashMap map2 = new HashMap();
                                map2.put("category_id", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25421a);
                                map2.put("category_name", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25422b);
                                map2.put("parent_id", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25423c);
                                multiScreenActivityEXO.f28745m1.add(map2);
                            } else if (multiScreenActivityEXO.f28735h1.c0(((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25422b, "Live").equals(obj)) {
                                HashMap map3 = new HashMap();
                                map3.put("category_id", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25421a);
                                map3.put("category_name", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25422b);
                                map3.put("parent_id", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25423c);
                                multiScreenActivityEXO.f28745m1.add(map3);
                            }
                        }
                    } else {
                        str = str9;
                        obj = obj8;
                        if (!str12.equals("Yes")) {
                            HashMap map4 = new HashMap();
                            map4.put("category_id", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25421a);
                            map4.put("category_name", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25422b);
                            map4.put("parent_id", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25423c);
                            multiScreenActivityEXO.f28745m1.add(map4);
                        } else if (multiScreenActivityEXO.f28735h1.c0(((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25422b, "Live").equals(obj)) {
                            HashMap map5 = new HashMap();
                            map5.put("category_id", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25421a);
                            map5.put("category_name", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25422b);
                            map5.put("parent_id", ((h7.a) multiScreenActivityEXO.f28743l1.get(i9)).f25423c);
                            multiScreenActivityEXO.f28745m1.add(map5);
                        }
                    }
                    i9++;
                    str7 = str11;
                    str8 = str10;
                    obj8 = obj;
                    str9 = str;
                }
                break;
            default:
                multiScreenActivityEXO.f28747n1 = new ArrayList();
                new ArrayList();
                boolean zEquals = multiScreenActivityEXO.f28755r1.equals("99999");
                String str13 = multiScreenActivityEXO.f28757s1;
                Object obj9 = "tv_archive_duration";
                Object obj10 = "direct_source";
                Object obj11 = "tv_archive";
                if (zEquals) {
                    multiScreenActivityEXO.f28749o1.clear();
                    Object obj12 = "custom_sid";
                    multiScreenActivityEXO.f28749o1 = multiScreenActivityEXO.f28731f1.r0(str13, multiScreenActivityEXO.f28739j1.f25478a);
                    int i10 = 0;
                    while (i10 < multiScreenActivityEXO.f28749o1.size()) {
                        if (U2.z(str4, str3, str3)) {
                            str2 = str3;
                            if (multiScreenActivityEXO.f28733g1.N(((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25436h, str5, multiScreenActivityEXO.f28739j1.f25478a).equals(str6)) {
                                obj4 = obj12;
                                obj5 = obj11;
                                obj6 = obj10;
                                obj7 = obj9;
                            } else {
                                HashMap map6 = new HashMap();
                                map6.put("num", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25429a);
                                map6.put("name", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25430b);
                                map6.put("stream_type", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25431c);
                                map6.put("stream_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25432d);
                                map6.put("stream_icon", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25433e);
                                map6.put("epg_channel_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25434f);
                                map6.put("added", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25435g);
                                map6.put("category_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25436h);
                                obj4 = obj12;
                                map6.put(obj4, ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25437i);
                                obj5 = obj11;
                                map6.put(obj5, ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25438j);
                                obj6 = obj10;
                                map6.put(obj6, ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25439k);
                                obj7 = obj9;
                                map6.put(obj7, ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25440l);
                                multiScreenActivityEXO.f28747n1.add(map6);
                            }
                        } else {
                            str2 = str3;
                            obj4 = obj12;
                            obj5 = obj11;
                            obj6 = obj10;
                            obj7 = obj9;
                            HashMap map7 = new HashMap();
                            map7.put("num", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25429a);
                            map7.put("name", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25430b);
                            map7.put("stream_type", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25431c);
                            map7.put("stream_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25432d);
                            map7.put("stream_icon", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25433e);
                            map7.put("epg_channel_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25434f);
                            map7.put("added", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25435g);
                            map7.put("category_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25436h);
                            map7.put(obj4, ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25437i);
                            map7.put(obj5, ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25438j);
                            map7.put(obj6, ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25439k);
                            map7.put(obj7, ((h7.d) multiScreenActivityEXO.f28749o1.get(i10)).f25440l);
                            multiScreenActivityEXO.f28747n1.add(map7);
                        }
                        i10++;
                        obj9 = obj7;
                        str4 = str4;
                        str3 = str2;
                        obj10 = obj6;
                        str5 = str5;
                        obj11 = obj5;
                        str6 = str6;
                        obj12 = obj4;
                    }
                } else {
                    Object obj13 = "yes";
                    Object obj14 = obj11;
                    String str14 = "TV";
                    Object obj15 = obj10;
                    String str15 = "ORT_PARENTAL_CONTROL_STATUS";
                    multiScreenActivityEXO.f28663D1 = null;
                    multiScreenActivityEXO.f28663D1 = new JSONArray();
                    multiScreenActivityEXO.f28749o1.clear();
                    Object obj16 = obj9;
                    ArrayList arrayListL0 = multiScreenActivityEXO.f28731f1.l0("all", multiScreenActivityEXO.f28755r1, str13);
                    multiScreenActivityEXO.f28749o1 = arrayListL0;
                    Log.d("XCIPTV_TAG", arrayListL0.toString());
                    int i11 = 0;
                    while (i11 < multiScreenActivityEXO.f28749o1.size()) {
                        String str16 = str15;
                        if (U2.z(str16, "locked", "locked")) {
                            str15 = str16;
                            Object obj17 = obj15;
                            Object obj18 = obj14;
                            String str17 = str14;
                            Object obj19 = obj13;
                            if (multiScreenActivityEXO.f28733g1.N(((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25436h, str17, multiScreenActivityEXO.f28739j1.f25478a).equals(obj19) || !((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25431c.toLowerCase().contains("live")) {
                                obj13 = obj19;
                                str14 = str17;
                                obj3 = obj16;
                                obj15 = obj17;
                                obj2 = obj18;
                            } else {
                                HashMap map8 = new HashMap();
                                map8.put("num", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25429a);
                                map8.put("name", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25430b);
                                map8.put("stream_type", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25431c);
                                map8.put("stream_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25432d);
                                map8.put("stream_icon", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25433e);
                                map8.put("epg_channel_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25434f);
                                map8.put("added", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25435g);
                                map8.put("category_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25436h);
                                map8.put("custom_sid", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25437i);
                                obj2 = obj18;
                                map8.put(obj2, ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25438j);
                                obj13 = obj19;
                                obj15 = obj17;
                                map8.put(obj15, ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25439k);
                                str14 = str17;
                                obj3 = obj16;
                                map8.put(obj3, ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25440l);
                                multiScreenActivityEXO.f28747n1.add(map8);
                            }
                        } else {
                            str15 = str16;
                            obj2 = obj14;
                            obj3 = obj16;
                            if (((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25431c.toLowerCase().contains("live")) {
                                HashMap map9 = new HashMap();
                                map9.put("num", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25429a);
                                map9.put("name", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25430b);
                                map9.put("stream_type", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25431c);
                                map9.put("stream_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25432d);
                                map9.put("stream_icon", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25433e);
                                map9.put("epg_channel_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25434f);
                                map9.put("added", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25435g);
                                map9.put("category_id", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25436h);
                                map9.put("custom_sid", ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25437i);
                                map9.put(obj2, ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25438j);
                                map9.put(obj15, ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25439k);
                                map9.put(obj3, ((h7.d) multiScreenActivityEXO.f28749o1.get(i11)).f25440l);
                                multiScreenActivityEXO.f28747n1.add(map9);
                            }
                        }
                        i11++;
                        obj16 = obj3;
                        obj14 = obj2;
                    }
                }
                multiScreenActivityEXO.f28663D1 = new JSONArray((Collection) multiScreenActivityEXO.f28747n1);
                break;
        }
    }

    public final void b(Void r7) {
        int i8 = this.f10252a;
        MultiScreenActivityEXO multiScreenActivityEXO = this.f10253b;
        switch (i8) {
            case 0:
                super.onPostExecute(r7);
                multiScreenActivityEXO.f28725c1.setVisibility(4);
                MultiScreenActivityEXO multiScreenActivityEXO2 = multiScreenActivityEXO.f28668G;
                multiScreenActivityEXO.f28727d1.setAdapter((ListAdapter) new C0549t(0, multiScreenActivityEXO2, multiScreenActivityEXO.f28745m1));
                int i9 = 1;
                if (multiScreenActivityEXO.f28731f1.v0(multiScreenActivityEXO.f28739j1.f25478a, multiScreenActivityEXO.f28739j1.f25478a + "_live").equals("yes")) {
                    multiScreenActivityEXO.f28755r1 = "99999";
                    multiScreenActivityEXO.f28753q1 = multiScreenActivityEXO2.getString(R.string.xc_favorites);
                    z4.q0.q().g("ORT_CAT_NAME", multiScreenActivityEXO.f28753q1);
                    multiScreenActivityEXO.f28727d1.setSelection(0);
                    z4.q0.q().f(0, "ORT_SELECTED_POS");
                } else {
                    multiScreenActivityEXO.f28753q1 = (String) ((HashMap) multiScreenActivityEXO.f28745m1.get(1)).get("category_name");
                    z4.q0.q().g("ORT_CAT_NAME", multiScreenActivityEXO.f28753q1);
                    multiScreenActivityEXO.f28755r1 = (String) ((HashMap) multiScreenActivityEXO.f28745m1.get(1)).get("category_id");
                    z4.q0.q().f(1, "ORT_SELECTED_POS");
                    multiScreenActivityEXO.f28727d1.setSelection(1);
                }
                multiScreenActivityEXO.f28727d1.requestFocus();
                new Y(multiScreenActivityEXO, i9).execute(new Void[0]);
                multiScreenActivityEXO.f28727d1.setOnItemClickListener(new C0514f(this, 11));
                break;
            default:
                super.onPostExecute(r7);
                multiScreenActivityEXO.f28725c1.setVisibility(4);
                multiScreenActivityEXO.f28729e1.setAdapter((ListAdapter) new C0525i1(multiScreenActivityEXO, multiScreenActivityEXO.f28747n1));
                multiScreenActivityEXO.f28729e1.setOnItemClickListener(new C0514f(this, 12));
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        switch (this.f10252a) {
            case 0:
                a();
                break;
            default:
                a();
                break;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        switch (this.f10252a) {
            case 0:
                b((Void) obj);
                break;
            default:
                b((Void) obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        int i8 = this.f10252a;
        MultiScreenActivityEXO multiScreenActivityEXO = this.f10253b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                multiScreenActivityEXO.f28725c1.setVisibility(0);
                break;
            default:
                super.onPreExecute();
                multiScreenActivityEXO.f28725c1.setVisibility(0);
                break;
        }
    }

    public /* synthetic */ Y(MultiScreenActivityEXO multiScreenActivityEXO, int i8) {
        this.f10252a = i8;
        this.f10253b = multiScreenActivityEXO;
    }
}
