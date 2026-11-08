package D1;

import O1.C0314m;
import O1.c0;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import b7.A1;
import b7.C0548s0;
import b7.D0;
import b7.F0;
import b7.G0;
import b7.H0;
import b7.I0;
import b7.P0;
import b7.R0;
import b7.S0;
import b7.ViewOnClickListenerC0553v;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONException;
import p094m0.AbstractC3123f;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.ORPlayerLinearLayoutManager;

/* JADX INFO: renamed from: D1.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0152q extends O1.C {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f2202I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f2203J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f2204K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Object f2205L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Object f2206M;

    public C0152q(C0156v c0156v, String[] strArr, Drawable[] drawableArr) {
        this.f2202I = 0;
        this.f2206M = c0156v;
        this.f2203J = strArr;
        this.f2204K = new String[strArr.length];
        this.f2205L = drawableArr;
    }

    @Override // O1.C
    public final int a() {
        switch (this.f2202I) {
            case 0:
                return ((String[]) this.f2203J).length;
            case 1:
                return ((ArrayList) this.f2203J).size();
            case 2:
                return ((ArrayList) this.f2203J).size();
            case 3:
                return ((ArrayList) this.f2203J).size();
            default:
                return ((ArrayList) this.f2203J).size();
        }
    }

    @Override // O1.C
    public final void c(c0 c0Var, int i8) {
        int i9;
        P0 p7;
        C0152q c0152q;
        String str;
        HashMap map;
        C0152q c0152q2 = this;
        int i10 = c0152q2.f2202I;
        Object obj = c0152q2.f2206M;
        switch (i10) {
            case 0:
                C0151p c0151p = (C0151p) c0Var;
                boolean zG = c0152q2.g(i8);
                View view = c0151p.f5353G;
                if (zG) {
                    view.setLayoutParams(new O1.M(-1, -2));
                } else {
                    view.setLayoutParams(new O1.M(0, 0));
                }
                c0151p.f2198a0.setText(((String[]) c0152q2.f2203J)[i8]);
                String str2 = ((String[]) c0152q2.f2204K)[i8];
                TextView textView = c0151p.f2199b0;
                if (str2 == null) {
                    i9 = 8;
                    textView.setVisibility(8);
                } else {
                    i9 = 8;
                    textView.setText(str2);
                }
                Drawable drawable = ((Drawable[]) c0152q2.f2205L)[i8];
                ImageView imageView = c0151p.f2200c0;
                if (drawable == null) {
                    imageView.setVisibility(i9);
                } else {
                    imageView.setImageDrawable(drawable);
                }
                break;
            case 1:
                H0 h8 = (H0) c0Var;
                c0152q2.f2204K = (HashMap) ((ArrayList) c0152q2.f2203J).get(i8);
                I0 i11 = (I0) obj;
                ((com.bumptech.glide.l) com.bumptech.glide.b.d(i11.l()).n((String) ((HashMap) c0152q2.f2204K).get("cover")).f(R.drawable.logo)).F(h8.f10026b0);
                Object obj2 = ((HashMap) c0152q2.f2204K).get("series_id");
                ImageView imageView2 = h8.f10027c0;
                imageView2.setTag(obj2);
                if (i11.f10076r1.contains("\"series_id\":\"" + ((String) ((HashMap) c0152q2.f2204K).get("series_id")) + "\"")) {
                    imageView2.setVisibility(0);
                } else {
                    imageView2.setVisibility(8);
                }
                CardView cardView = h8.f10028d0;
                cardView.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) cardView.getLayoutParams();
                layoutParams.height = i11.f10051S0;
                layoutParams.width = i11.f10050R0;
                cardView.setLayoutParams(layoutParams);
                TextView textView2 = h8.f10025a0;
                textView2.setVisibility(8);
                textView2.setText((CharSequence) ((HashMap) c0152q2.f2204K).get("name"));
                int i12 = 0;
                cardView.setOnFocusChangeListener(new F0(i8, i12, c0152q2, h8));
                cardView.setFocusable(true);
                cardView.setOnClickListener(new ViewOnClickListenerC0553v(c0152q2, h8, i8));
                cardView.setOnLongClickListener(new G0(i8, i12, c0152q2, h8));
                if ((Methods.P() || Methods.T(i11.l())) && !i11.f10072n1) {
                    i11.f10072n1 = true;
                    ORPlayerMainActivity.f28775G0 = false;
                    i11.f10056X0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    i11.f10057Y0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    i11.f10059a1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    i11.f10058Z0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    i11.f10055W0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    i11.f10054V0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    i11.f10053U0.setText(((String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("name")).toUpperCase());
                    boolean zEquals = ((String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("backdrop_path")).equals(HttpUrl.FRAGMENT_ENCODE_SET);
                    N2.a aVar = i11.f10075q1;
                    if (zEquals) {
                        ((com.bumptech.glide.l) com.bumptech.glide.b.d(i11.l()).n((String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("cover")).b()).H(G2.c.b(aVar)).F(i11.f10052T0);
                    } else {
                        ((com.bumptech.glide.l) com.bumptech.glide.b.d(i11.l()).n((String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("backdrop_path")).b()).H(G2.c.b(aVar)).F(i11.f10052T0);
                    }
                    c0152q2.f2205L = (String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("series_id");
                    i11.f10056X0.setText((CharSequence) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("genre"));
                    i11.f10057Y0.setText((CharSequence) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("plot"));
                    i11.f10059a1.setText((CharSequence) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("cast"));
                    String str3 = (String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("rating");
                    if (str3.length() > 0) {
                        int i13 = Integer.parseInt(str3.substring(0, 1));
                        String strA = HttpUrl.FRAGMENT_ENCODE_SET;
                        for (int i14 = 0; i14 < i13; i14++) {
                            strA = U2.A(strA, "⭐");
                            TextView textView3 = i11.f10054V0;
                            StringBuilder sbL = p000a.r.l(strA, " (");
                            sbL.append((String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("rating"));
                            sbL.append(")");
                            textView3.setText(sbL.toString());
                        }
                    }
                    String strX = (String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i8)).get("releaseDate");
                    if (strX.length() > 8) {
                        strX = Methods.x(strX);
                    }
                    i11.f10055W0.setText(strX);
                    cardView.requestFocus();
                    cardView.setBackgroundResource(R.drawable.orplayer_card_selected);
                }
                break;
            case 2:
                P0 p8 = (P0) c0Var;
                HashMap map2 = (HashMap) ((ArrayList) c0152q2.f2203J).get(i8);
                c0152q2.f2204K = map2;
                p8.f10163a0.setText(((String) map2.get("category_name")).toUpperCase());
                c0152q2.f2205L = null;
                c0152q2.f2205L = new ArrayList();
                int i15 = 0;
                while (true) {
                    S0 s7 = (S0) obj;
                    if (i15 >= s7.f10220p1.length()) {
                        P0 p9 = p8;
                        C0152q c0152q3 = c0152q2;
                        s7.l();
                        C0152q c0152q4 = new C0152q(s7, (ArrayList) c0152q3.f2205L, 3);
                        RecyclerView recyclerView = p9.f10164b0;
                        recyclerView.setAdapter(c0152q4);
                        recyclerView.j(new C0314m(c0152q3, 5));
                        recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(new D0(c0152q3, p9, 1));
                    } else {
                        try {
                            String string = ((S0) obj).f10220p1.getJSONObject(i15).getString("category_id");
                            p7 = p8;
                            try {
                                try {
                                    if (((S0) obj).f10209e1.equals("fav")) {
                                        str = "custom_sid";
                                    } else {
                                        try {
                                            if (((S0) obj).f10209e1.equals("cont") || ((S0) obj).f10209e1.equals("search")) {
                                                str = "custom_sid";
                                            } else {
                                                if (((S0) obj).f10209e1.equals("all") && ((String) ((HashMap) c0152q2.f2204K).get("category_id")).equals(string)) {
                                                    HashMap map3 = new HashMap();
                                                    map3.put("num", ((S0) obj).f10220p1.getJSONObject(i15).getString("num"));
                                                    map3.put("name", ((S0) obj).f10220p1.getJSONObject(i15).getString("name"));
                                                    map3.put("stream_type", ((S0) obj).f10220p1.getJSONObject(i15).getString("stream_type"));
                                                    map3.put("stream_id", ((S0) obj).f10220p1.getJSONObject(i15).getString("stream_id"));
                                                    map3.put("stream_icon", ((S0) obj).f10220p1.getJSONObject(i15).getString("stream_icon"));
                                                    map3.put("rating", ((S0) obj).f10220p1.getJSONObject(i15).getString("rating"));
                                                    map3.put("rating_5based", ((S0) obj).f10220p1.getJSONObject(i15).getString("rating_5based"));
                                                    map3.put("added", ((S0) obj).f10220p1.getJSONObject(i15).getString("added"));
                                                    map3.put("category_id", ((S0) obj).f10220p1.getJSONObject(i15).getString("category_id"));
                                                    map3.put("container_extension", ((S0) obj).f10220p1.getJSONObject(i15).getString("container_extension"));
                                                    map3.put("custom_sid", ((S0) obj).f10220p1.getJSONObject(i15).getString("custom_sid"));
                                                    map3.put("direct_source", ((S0) obj).f10220p1.getJSONObject(i15).getString("direct_source"));
                                                    ((ArrayList) c0152q2.f2205L).add(map3);
                                                }
                                                c0152q = c0152q2;
                                                i15++;
                                                c0152q2 = c0152q;
                                                p8 = p7;
                                            }
                                        } catch (JSONException unused) {
                                        }
                                    }
                                    ((ArrayList) c0152q.f2205L).add(map);
                                } catch (JSONException unused2) {
                                }
                                map.put("num", ((S0) obj).f10220p1.getJSONObject(i15).getString("num"));
                                map.put("name", ((S0) obj).f10220p1.getJSONObject(i15).getString("name"));
                                map.put("stream_type", ((S0) obj).f10220p1.getJSONObject(i15).getString("stream_type"));
                                map.put("stream_id", ((S0) obj).f10220p1.getJSONObject(i15).getString("stream_id"));
                                map.put("stream_icon", ((S0) obj).f10220p1.getJSONObject(i15).getString("stream_icon"));
                                map.put("rating", ((S0) obj).f10220p1.getJSONObject(i15).getString("rating"));
                                map.put("rating_5based", ((S0) obj).f10220p1.getJSONObject(i15).getString("rating_5based"));
                                map.put("added", ((S0) obj).f10220p1.getJSONObject(i15).getString("added"));
                                map.put("category_id", ((S0) obj).f10220p1.getJSONObject(i15).getString("category_id"));
                                map.put("container_extension", ((S0) obj).f10220p1.getJSONObject(i15).getString("container_extension"));
                                map.put(str, ((S0) obj).f10220p1.getJSONObject(i15).getString(str));
                                map.put("direct_source", ((S0) obj).f10220p1.getJSONObject(i15).getString(
                                /*  JADX ERROR: Method code generation error
                                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x04fa: INVOKE 
                                      (r6v50 'map' java.util.HashMap)
                                      ("direct_source")
                                      (wrap java.lang.String:0x04f6: INVOKE 
                                      (wrap org.json.JSONObject:0x04f2: INVOKE 
                                      (wrap org.json.JSONArray:0x04f0: IGET (wrap b7.S0:0x04ee: CHECK_CAST (b7.S0) (r4v0 'obj' java.lang.Object)) A[Catch: JSONException -> 0x0507, WRAPPED] (LINE:1265) b7.S0.p1 org.json.JSONArray)
                                      (r3v56 'i15' int)
                                     VIRTUAL call: org.json.JSONArray.getJSONObject(int):org.json.JSONObject A[Catch: JSONException -> 0x0507, MD:(int):org.json.JSONObject throws org.json.JSONException (c), WRAPPED] (LINE:1267))
                                      (r26v1 java.lang.String)
                                     VIRTUAL call: org.json.JSONObject.getString(java.lang.String):java.lang.String A[Catch: JSONException -> 0x0507, MD:(java.lang.String):java.lang.String throws org.json.JSONException (c), WRAPPED] (LINE:1271))
                                     VIRTUAL call: java.util.HashMap.put(java.lang.Object, java.lang.Object):java.lang.Object A[Catch: JSONException -> 0x0507, MD:(K, V):V (c), TRY_LEAVE] (LINE:1275) in method: D1.q.c(O1.c0, int):void, file: classes.dex
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                                    	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                                    	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                    	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
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
                                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r26v1 java.lang.String
                                    	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
                                    */
                                /*
                                    Method dump skipped, instruction units count: 2048
                                    To view this dump change 'Code comments level' option to 'DEBUG'
                                */
                                throw new UnsupportedOperationException("Method not decompiled: D1.C0152q.c(O1.c0, int):void");
                            }

                            @Override // O1.C
                            public final c0 d(RecyclerView recyclerView, int i8) {
                                int i9 = this.f2202I;
                                Object obj = this.f2206M;
                                switch (i9) {
                                    case 0:
                                        C0156v c0156v = (C0156v) obj;
                                        return new C0151p(c0156v, LayoutInflater.from(c0156v.getContext()).inflate(R.layout.exo_styled_settings_list_item, (ViewGroup) recyclerView, false));
                                    case 1:
                                        View viewInflate = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                                        H0 h8 = new H0(viewInflate);
                                        h8.f10025a0 = (TextView) viewInflate.findViewById(R.id.txt_movie_name);
                                        h8.f10026b0 = (ImageView) viewInflate.findViewById(R.id.img_poster);
                                        h8.f10027c0 = (ImageView) viewInflate.findViewById(R.id.img_fav);
                                        h8.f10028d0 = (CardView) viewInflate.findViewById(R.id.cardview_vod);
                                        return h8;
                                    case 2:
                                        View viewInflate2 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_cat_item, (ViewGroup) recyclerView, false);
                                        P0 p7 = new P0(viewInflate2);
                                        p7.f10163a0 = (TextView) viewInflate2.findViewById(R.id.txt_cat_name_ch);
                                        RecyclerView recyclerView2 = (RecyclerView) viewInflate2.findViewById(R.id.recyler_vod);
                                        p7.f10164b0 = recyclerView2;
                                        ((S0) obj).l();
                                        recyclerView2.setLayoutManager(new ORPlayerLinearLayoutManager(0));
                                        return p7;
                                    case 3:
                                        View viewInflate3 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                                        R0 r7 = new R0(viewInflate3);
                                        r7.f10174a0 = (TextView) viewInflate3.findViewById(R.id.txt_movie_name);
                                        r7.f10175b0 = (ImageView) viewInflate3.findViewById(R.id.img_poster);
                                        r7.f10176c0 = (ImageView) viewInflate3.findViewById(R.id.img_fav);
                                        r7.f10177d0 = (CardView) viewInflate3.findViewById(R.id.cardview_vod);
                                        return r7;
                                    default:
                                        return new C0548s0(LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false));
                                }
                            }

                            public final void f(int i8, String str) {
                                ((String[]) this.f2204K)[i8] = str;
                            }

                            public final boolean g(int i8) {
                                Object obj = this.f2206M;
                                if (((C0156v) obj).f2252V0 == null) {
                                    return false;
                                }
                                if (i8 == 0) {
                                    return ((AbstractC3123f) ((C0156v) obj).f2252V0).c(13);
                                }
                                if (i8 != 1) {
                                    return true;
                                }
                                return ((AbstractC3123f) ((C0156v) obj).f2252V0).c(30) && ((AbstractC3123f) ((C0156v) obj).f2252V0).c(29);
                            }

                            public C0152q(I0 i8, ArrayList arrayList) {
                                this.f2202I = 1;
                                this.f2206M = i8;
                                this.f2204K = new HashMap();
                                this.f2205L = HttpUrl.FRAGMENT_ENCODE_SET;
                                this.f2203J = arrayList;
                            }

                            public C0152q(S0 s7, ArrayList arrayList, int i8) {
                                this.f2202I = i8;
                                if (i8 != 3) {
                                    this.f2206M = s7;
                                    this.f2204K = new HashMap();
                                    this.f2203J = arrayList;
                                } else {
                                    this.f2206M = s7;
                                    this.f2204K = new HashMap();
                                    this.f2203J = arrayList;
                                }
                            }

                            public C0152q(A1 a8, ArrayList arrayList) {
                                this.f2202I = 4;
                                this.f2206M = a8;
                                this.f2204K = new HashMap();
                                this.f2205L = HttpUrl.FRAGMENT_ENCODE_SET;
                                this.f2203J = arrayList;
                            }
                        }
