package pe.hf.black20.updatecontents;

import A0.O;
import D1.ViewOnClickListenerC0144i;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.job.JobScheduler;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import c7.a;
import c7.b;
import h7.i;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import l7.h;
import org.json.JSONArray;
import org.json.JSONException;
import p000a.r;
import p086l.C3061x;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.updatecontents.XCUpdateContents;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.d;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class XCUpdateContents extends Activity implements d {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final /* synthetic */ int f29391b0 = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public SharedPreferences f29392G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public a f29393H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public c7.d f29394I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public i f29395J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Button f29397L;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public TextView f29405T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public TextView f29406U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public TextView f29407V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public TextView f29408W;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public Handler f29410Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public h f29411Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public ExecutorService f29412a0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final XCUpdateContents f29396K = this;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final ExecutorService f29398M = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f29399N = false;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f29400O = false;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f29401P = false;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f29402Q = false;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f29403R = false;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f29404S = false;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public String f29409X = "yes";

    @Override // pe.hf.black20.util.d
    public final void b(int i8, String str, String str2) {
        Log.d("XCIPTV_TAG", "XCUpdateContents -- onFailureJson - " + str);
        str2.getClass();
        switch (str2) {
            case "list-livetv":
                this.f29400O = true;
                r.o(this.f29394I, "liststreams", null, null);
                break;
            case "cat-livetv":
                this.f29399N = true;
                r.o(this.f29394I, "tv_category", null, null);
                break;
            case "list-series":
                this.f29404S = true;
                r.o(this.f29394I, "series", null, null);
                break;
            case "cat-series":
                this.f29403R = true;
                r.o(this.f29394I, "series_category", null, null);
                break;
            case "cat-vod":
                this.f29401P = true;
                r.o(this.f29394I, "vod_category", null, null);
                break;
            case "list-vod":
                this.f29402Q = true;
                r.o(this.f29394I, "vods", null, null);
                break;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // pe.hf.black20.util.d
    public final void f(final String str, String str2) {
        str2.getClass();
        final int i8 = 5;
        final int i9 = 4;
        final int i10 = 3;
        final int i11 = 2;
        final int i12 = 0;
        final int i13 = 1;
        byte b8 = -1;
        switch (str2.hashCode()) {
            case -1172070275:
                if (str2.equals("list-livetv")) {
                    b8 = 0;
                }
                break;
            case -1021328827:
                if (str2.equals("cat-livetv")) {
                    b8 = 1;
                }
                break;
            case -975476090:
                if (str2.equals("list-series")) {
                    b8 = 2;
                }
                break;
            case -824734642:
                if (str2.equals("cat-series")) {
                    b8 = 3;
                }
                break;
            case 554164820:
                if (str2.equals("cat-vod")) {
                    b8 = 4;
                }
                break;
            case 1344499484:
                if (str2.equals("list-vod")) {
                    b8 = 5;
                }
                break;
        }
        ExecutorService executorService = this.f29398M;
        if (b8 == 0) {
            try {
                executorService.execute(new Runnable(this) { // from class: l7.i

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ XCUpdateContents f26644H;

                    {
                        this.f26644H = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        int i14 = i12;
                        String str3 = str;
                        XCUpdateContents xCUpdateContents = this.f26644H;
                        switch (i14) {
                            case 0:
                                int i15 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.k(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 5));
                                break;
                            case 1:
                                int i16 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.O(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused2) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 1));
                                break;
                            case 2:
                                int i17 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.b0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused3) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 4));
                                break;
                            case 3:
                                int i18 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.E(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused4) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 6));
                                break;
                            case 4:
                                int i19 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.a0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused5) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 3));
                                break;
                            default:
                                int i20 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.c0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused6) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 2));
                                break;
                        }
                    }
                });
                return;
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- list-livetv");
                this.f29400O = true;
                r.o(this.f29394I, "liststreams", null, null);
                return;
            }
        }
        if (b8 == 1) {
            try {
                executorService.execute(new Runnable(this) { // from class: l7.i

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ XCUpdateContents f26644H;

                    {
                        this.f26644H = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        int i14 = i9;
                        String str3 = str;
                        XCUpdateContents xCUpdateContents = this.f26644H;
                        switch (i14) {
                            case 0:
                                int i15 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.k(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused2) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 5));
                                break;
                            case 1:
                                int i16 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.O(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused3) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 1));
                                break;
                            case 2:
                                int i17 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.b0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused4) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 4));
                                break;
                            case 3:
                                int i18 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.E(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused5) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 6));
                                break;
                            case 4:
                                int i19 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.a0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused6) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 3));
                                break;
                            default:
                                int i20 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.c0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused7) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 2));
                                break;
                        }
                    }
                });
                return;
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- cat-livetv");
                this.f29399N = true;
                r.o(this.f29394I, "tv_category", null, null);
                return;
            }
        }
        if (b8 == 2) {
            try {
                executorService.execute(new Runnable(this) { // from class: l7.i

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ XCUpdateContents f26644H;

                    {
                        this.f26644H = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        int i14 = i10;
                        String str3 = str;
                        XCUpdateContents xCUpdateContents = this.f26644H;
                        switch (i14) {
                            case 0:
                                int i15 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.k(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused3) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 5));
                                break;
                            case 1:
                                int i16 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.O(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused4) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 1));
                                break;
                            case 2:
                                int i17 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.b0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused5) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 4));
                                break;
                            case 3:
                                int i18 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.E(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused6) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 6));
                                break;
                            case 4:
                                int i19 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.a0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused7) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 3));
                                break;
                            default:
                                int i20 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.c0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused8) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 2));
                                break;
                        }
                    }
                });
                return;
            } catch (Exception unused3) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- list-series");
                this.f29404S = true;
                r.o(this.f29394I, "series", null, null);
                return;
            }
        }
        if (b8 == 3) {
            try {
                executorService.execute(new Runnable(this) { // from class: l7.i

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ XCUpdateContents f26644H;

                    {
                        this.f26644H = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        int i14 = i13;
                        String str3 = str;
                        XCUpdateContents xCUpdateContents = this.f26644H;
                        switch (i14) {
                            case 0:
                                int i15 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.k(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused4) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 5));
                                break;
                            case 1:
                                int i16 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.O(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused5) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 1));
                                break;
                            case 2:
                                int i17 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.b0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused6) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 4));
                                break;
                            case 3:
                                int i18 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.E(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused7) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 6));
                                break;
                            case 4:
                                int i19 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.a0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused8) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 3));
                                break;
                            default:
                                int i20 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.c0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused9) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 2));
                                break;
                        }
                    }
                });
                return;
            } catch (Exception unused4) {
                this.f29403R = true;
                r.o(this.f29394I, "series_category", null, null);
                Log.d("XCIPTV_TAG", "XCUpdateContents -- cat-series");
                return;
            }
        }
        if (b8 == 4) {
            try {
                executorService.execute(new Runnable(this) { // from class: l7.i

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ XCUpdateContents f26644H;

                    {
                        this.f26644H = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        int i14 = i8;
                        String str3 = str;
                        XCUpdateContents xCUpdateContents = this.f26644H;
                        switch (i14) {
                            case 0:
                                int i15 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.k(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused5) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 5));
                                break;
                            case 1:
                                int i16 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.O(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused6) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 1));
                                break;
                            case 2:
                                int i17 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.b0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused7) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 4));
                                break;
                            case 3:
                                int i18 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.E(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused8) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 6));
                                break;
                            case 4:
                                int i19 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.a0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused9) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 3));
                                break;
                            default:
                                int i20 = XCUpdateContents.f29391b0;
                                xCUpdateContents.getClass();
                                if (str3.length() > 0) {
                                    try {
                                        xCUpdateContents.f29394I.c0(new JSONArray(str3));
                                        break;
                                    } catch (JSONException unused10) {
                                    }
                                }
                                xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 2));
                                break;
                        }
                    }
                });
                return;
            } catch (Exception unused5) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- cat-vod");
                this.f29401P = true;
                r.o(this.f29394I, "vod_category", null, null);
                return;
            }
        }
        if (b8 != 5) {
            return;
        }
        try {
            executorService.execute(new Runnable(this) { // from class: l7.i

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ XCUpdateContents f26644H;

                {
                    this.f26644H = this;
                }

                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    int i14 = i11;
                    String str3 = str;
                    XCUpdateContents xCUpdateContents = this.f26644H;
                    switch (i14) {
                        case 0:
                            int i15 = XCUpdateContents.f29391b0;
                            xCUpdateContents.getClass();
                            if (str3.length() > 0) {
                                try {
                                    xCUpdateContents.f29394I.k(new JSONArray(str3));
                                    break;
                                } catch (JSONException unused6) {
                                }
                            }
                            xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 5));
                            break;
                        case 1:
                            int i16 = XCUpdateContents.f29391b0;
                            xCUpdateContents.getClass();
                            if (str3.length() > 0) {
                                try {
                                    xCUpdateContents.f29394I.O(new JSONArray(str3));
                                    break;
                                } catch (JSONException unused7) {
                                }
                            }
                            xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 1));
                            break;
                        case 2:
                            int i17 = XCUpdateContents.f29391b0;
                            xCUpdateContents.getClass();
                            if (str3.length() > 0) {
                                try {
                                    xCUpdateContents.f29394I.b0(new JSONArray(str3));
                                    break;
                                } catch (JSONException unused8) {
                                }
                            }
                            xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 4));
                            break;
                        case 3:
                            int i18 = XCUpdateContents.f29391b0;
                            xCUpdateContents.getClass();
                            if (str3.length() > 0) {
                                try {
                                    xCUpdateContents.f29394I.E(new JSONArray(str3));
                                    break;
                                } catch (JSONException unused9) {
                                }
                            }
                            xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 6));
                            break;
                        case 4:
                            int i19 = XCUpdateContents.f29391b0;
                            xCUpdateContents.getClass();
                            if (str3.length() > 0) {
                                try {
                                    xCUpdateContents.f29394I.a0(new JSONArray(str3));
                                    break;
                                } catch (JSONException unused10) {
                                }
                            }
                            xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 3));
                            break;
                        default:
                            int i20 = XCUpdateContents.f29391b0;
                            xCUpdateContents.getClass();
                            if (str3.length() > 0) {
                                try {
                                    xCUpdateContents.f29394I.c0(new JSONArray(str3));
                                    break;
                                } catch (JSONException unused11) {
                                }
                            }
                            xCUpdateContents.runOnUiThread(new h(xCUpdateContents, 2));
                            break;
                    }
                }
            });
        } catch (Exception unused6) {
            Log.d("XCIPTV_TAG", "XCUpdateContents -- list-vod");
            this.f29402Q = true;
            r.o(this.f29394I, "vods", null, null);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.f29409X.equals("yes")) {
            q0.q().f(0, "ORT_PROCESS_STATUS");
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_update_contents);
        ImageView imageView = (ImageView) findViewById(R.id.img_bg);
        XCUpdateContents xCUpdateContents = this.f29396K;
        if (Methods.R(xCUpdateContents)) {
            imageView.setBackgroundResource(R.drawable.corner_shadow);
        } else {
            imageView.setBackgroundResource(R.drawable.bg2);
        }
        Log.d("XCIPTV_TAG", "XCUpdateContents -----------Calling XCUpdateContents---------------");
        this.f29392G = xCUpdateContents.getSharedPreferences("pe.hf.black20", 0);
        this.f29393H = new a(xCUpdateContents, 0);
        this.f29394I = new c7.d(xCUpdateContents);
        new b(xCUpdateContents, 0);
        this.f29395J = O.x("ORT_PROFILE", "Default (XC)", this.f29393H);
        this.f29405T = (TextView) findViewById(R.id.txt_tv_status);
        this.f29406U = (TextView) findViewById(R.id.txt_vod_status);
        this.f29407V = (TextView) findViewById(R.id.txt_series_status);
        TextView textView = (TextView) findViewById(R.id.txt_info);
        this.f29408W = textView;
        textView.setText(xCUpdateContents.getString(R.string.xc_please_wait));
        this.f29397L = (Button) findViewById(R.id.btn_cancel);
        this.f29412a0 = Executors.newFixedThreadPool(6);
        new ExecutorCompletionService(this.f29412a0);
        if (Methods.Q(xCUpdateContents)) {
            this.f29409X = "no";
            this.f29397L.setEnabled(false);
            this.f29397L.setText(xCUpdateContents.getString(R.string.xc_please_wait));
            q0.q().f(0, "ORT_PROCESS_STATUS");
            Log.d("XCIPTV_TAG", "STOP SERVICE-----------OTRServices--------------");
            Methods.Y(xCUpdateContents, OTRServices.class);
            if (Methods.R(xCUpdateContents)) {
                if (ORPlayerMainActivity.w(xCUpdateContents)) {
                    Log.d("XCIPTV_TAG", "XCUpdateContents JobScheduler is Running");
                    Log.d("XCIPTV_TAG", "XCUpdateContents stopBackgroundTask");
                    ((JobScheduler) xCUpdateContents.getSystemService("jobscheduler")).cancel(123);
                } else {
                    Log.d("XCIPTV_TAG", "XCUpdateContents JobScheduler is not Running");
                    Log.d("XCIPTV_TAG", "XCUpdateContents stopBackgroundTask");
                }
            } else if (CategoriesActivity.i(xCUpdateContents)) {
                Log.d("XCIPTV_TAG", "XCUpdateContents JobScheduler is Running");
                Log.d("XCIPTV_TAG", "XCUpdateContents stopBackgroundTask");
                CategoriesActivity.m(xCUpdateContents);
            } else {
                Log.d("XCIPTV_TAG", "XCUpdateContents JobScheduler is not Running");
                Log.d("XCIPTV_TAG", "XCUpdateContents stopBackgroundTask");
            }
            SharedPreferences.Editor editorEdit = this.f29392G.edit();
            if (this.f29392G.contains("tvvodseries_dl_time")) {
                editorEdit.remove("tvvodseries_dl_time").apply();
            }
            editorEdit.apply();
            q0.q().f(1, "ORT_PROCESS_STATUS");
            String strA = Encrypt.a(this.f29395J.f25480c);
            String strA2 = Encrypt.a(this.f29395J.f25481d);
            String string = !this.f29392G.getString("portal_vod", null).equals("no") ? this.f29392G.getString("portal_vod", null) : Encrypt.a(this.f29395J.f25482e);
            String string2 = !this.f29392G.getString("portal_series", null).equals("no") ? this.f29392G.getString("portal_series", null) : Encrypt.a(this.f29395J.f25482e);
            StringBuilder sb = new StringBuilder();
            sb.append(Encrypt.a(this.f29395J.f25482e));
            sb.append("/player_api.php?username=");
            sb.append(strA);
            sb.append("&password=");
            String strJ = r.j(sb, strA2, "&action=get_live_categories");
            String str = string + "/player_api.php?username=" + strA + "&password=" + strA2 + "&action=get_vod_categories";
            String str2 = string2 + "/player_api.php?username=" + strA + "&password=" + strA2 + "&action=get_series_categories";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Encrypt.a(this.f29395J.f25482e));
            sb2.append("/player_api.php?username=");
            sb2.append(strA);
            sb2.append("&password=");
            String strJ2 = r.j(sb2, strA2, "&action=get_live_streams");
            String str3 = string + "/player_api.php?username=" + strA + "&password=" + strA2 + "&action=get_vod_streams";
            String str4 = string2 + "/player_api.php?username=" + strA + "&password=" + strA2 + "&action=get_series";
            try {
                new C3061x(this, this, "cat-livetv", strJ);
            } catch (Exception unused) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- VolleyGETJSONArrayRequest Error");
                this.f29399N = true;
                r.o(this.f29394I, "tv_category", null, null);
            }
            try {
                new C3061x(this, this, "cat-vod", str);
            } catch (Exception unused2) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- VolleyGETJSONArrayRequest Error");
                this.f29401P = true;
                r.o(this.f29394I, "vod_category", null, null);
            }
            try {
                new C3061x(this, this, "cat-series", str2);
            } catch (Exception unused3) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- VolleyGETJSONArrayRequest Error");
                this.f29403R = true;
                r.o(this.f29394I, "series_category", null, null);
            }
            try {
                new C3061x(this, this, "list-livetv", strJ2);
            } catch (Exception unused4) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- VolleyGETJSONArrayRequest Error");
                this.f29400O = true;
                r.o(this.f29394I, "liststreams", null, null);
            }
            try {
                new C3061x(this, this, "list-vod", str3);
            } catch (Exception unused5) {
                Log.d("XCIPTV_TAG", "XCUpdateContents -- VolleyGETJSONArrayRequest Error");
                this.f29402Q = true;
                r.o(this.f29394I, "vods", null, null);
            }
            try {
                new C3061x(this, this, "list-series", str4);
            } catch (Exception unused6) {
                this.f29404S = true;
                r.o(this.f29394I, "series", null, null);
                Log.d("XCIPTV_TAG", "XCUpdateContents -- VolleyGETJSONArrayRequest Error");
            }
            h hVar = this.f29411Z;
            if (hVar != null) {
                this.f29410Y.removeCallbacks(hVar);
                this.f29410Y.removeCallbacksAndMessages(null);
            }
            Handler handler = new Handler(Looper.getMainLooper());
            this.f29410Y = handler;
            h hVar2 = new h(this, 0);
            this.f29411Z = hVar2;
            handler.postDelayed(hVar2, 5000L);
        } else {
            View viewInflate = LayoutInflater.from(xCUpdateContents).inflate(R.layout.xcip_dialog_single_btn, (ViewGroup) null);
            AlertDialog alertDialogCreate = new AlertDialog.Builder(xCUpdateContents).create();
            ((TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText("Please check your internet connection.");
            Button button = (Button) viewInflate.findViewById(R.id.button_yes);
            button.setText(xCUpdateContents.getString(R.string.xc_ok));
            button.setOnClickListener(new ViewOnClickListenerC3020c(21, this, alertDialogCreate));
            alertDialogCreate.show();
            this.f29397L.setEnabled(true);
            this.f29397L.setText(xCUpdateContents.getString(R.string.xc_close));
        }
        this.f29397L.setOnClickListener(new ViewOnClickListenerC0144i(this, 5));
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (this.f29411Z != null) {
            this.f29411Z = null;
            this.f29410Y.removeCallbacks(null);
            this.f29410Y.removeCallbacksAndMessages(null);
        }
    }
}
