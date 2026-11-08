package l7;

import A0.O;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import p039f.RunnableC3002q;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SharedPreferences f26639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static h7.i f26640b;

    public static void a(Context context) {
        ArrayList arrayList;
        int i8 = 0;
        Log.d("XCIPTV_TAG", "XCDownloadXMLTV ---Started");
        q0.q().f(1, "ORT_PROCESS_STATUS");
        f26639a = context.getSharedPreferences("pe.hf.black20", 0);
        h7.i iVarX = O.x("ORT_PROFILE", "Default (XC)", new c7.a(context, 0));
        f26640b = iVarX;
        String str = Encrypt.a(f26640b.f25482e) + "/xmltv.php?username=" + Encrypt.a(iVarX.f25480c) + "&password=" + Encrypt.a(f26640b.f25481d);
        File file = new File(String.valueOf(OTRApp.f29417G.getFilesDir()));
        if (!file.exists()) {
            file.mkdir();
        }
        TrustManager[] trustManagerArr = {new f()};
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            try {
                Response responseExecute = new OkHttpClient.Builder().sslSocketFactory(sSLContext.getSocketFactory(), (X509TrustManager) trustManagerArr[0]).hostnameVerifier(new c()).build().newCall(new Request.Builder().url(str).build()).execute();
                try {
                    if (!responseExecute.isSuccessful() || responseExecute.body() == null) {
                        Log.e("XCIPTV_TAG", "Download failed: " + responseExecute.code() + " " + responseExecute.message());
                        c();
                    } else {
                        FileOutputStream fileOutputStream = new FileOutputStream(file + "/epg.xml");
                        try {
                            fileOutputStream.write(responseExecute.body().bytes());
                            if (Methods.O()) {
                                long length = new File(String.valueOf(OTRApp.f29417G.getFilesDir()).concat("/epg.xml")).length() / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                                SharedPreferences.Editor editorEdit = f26639a.edit();
                                editorEdit.putString("epg_file_size", String.valueOf(length));
                                editorEdit.apply();
                                Log.d("XCIPTV_TAG", "XCDownloadXMLTV ------------ XmlTvParser.TvListing parsing started");
                                I2.c cVarA = d7.h.a(context);
                                p133r0.b bVar = new p133r0.b(context, 1);
                                if (!cVarA.f4008G.isEmpty()) {
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i9 = 0; i9 < cVarA.f4008G.size(); i9++) {
                                        HashMap map = new HashMap();
                                        map.put("start", ((d7.g) cVarA.f4008G.get(i9)).f24677a);
                                        map.put("stop", ((d7.g) cVarA.f4008G.get(i9)).f24678b);
                                        map.put("channel", ((d7.g) cVarA.f4008G.get(i9)).f24679c);
                                        map.put("title", ((d7.g) cVarA.f4008G.get(i9)).f24680d);
                                        String strSubstring = ((d7.g) cVarA.f4008G.get(i9)).f24681e;
                                        if (strSubstring != null && !strSubstring.isEmpty() && strSubstring.length() > 151) {
                                            strSubstring = strSubstring.substring(0, 150);
                                        }
                                        map.put("desc", strSubstring);
                                        arrayList2.add(map);
                                    }
                                    cVarA.f4008G.clear();
                                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHH");
                                    Calendar calendar = Calendar.getInstance();
                                    calendar.setTime(new Date());
                                    int i10 = -12;
                                    calendar.add(11, -12);
                                    String str2 = simpleDateFormat.format(calendar.getTime());
                                    ArrayList arrayList3 = new ArrayList();
                                    while (i10 <= 21) {
                                        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMddHH");
                                        String strSubstring2 = str2.substring(i8, 10);
                                        try {
                                            Date date = simpleDateFormat2.parse(strSubstring2);
                                            Calendar calendar2 = Calendar.getInstance();
                                            calendar2.setTime(date);
                                            calendar2.add(11, i10);
                                            strSubstring2 = simpleDateFormat2.format(calendar2.getTime());
                                        } catch (ParseException unused) {
                                        }
                                        arrayList3.add(strSubstring2);
                                        i10++;
                                        i8 = 0;
                                    }
                                    if (Build.VERSION.SDK_INT >= 24) {
                                        final HashSet hashSet = new HashSet(arrayList3);
                                        arrayList = (ArrayList) arrayList2.stream().filter(new Predicate() { // from class: l7.d
                                            @Override // java.util.function.Predicate
                                            public final boolean test(Object obj) {
                                                Set set = hashSet;
                                                String str3 = (String) ((HashMap) obj).get("start");
                                                if (str3 == null || str3.length() < 10) {
                                                    return false;
                                                }
                                                return set.contains(str3.substring(0, 10).trim());
                                            }
                                        }).collect(Collectors.toCollection(new e()));
                                    } else {
                                        arrayList = arrayList2;
                                    }
                                    arrayList2.clear();
                                    Log.d("XCIPTV_TAG", "XCDownloadXMLTV ------------ XmlTvParser.TvListing parsing finished");
                                    bVar.k(arrayList);
                                }
                                Log.d("XCIPTV_TAG", "XCDownloadXMLTV ------------ EPG insert to DB finished");
                                bVar.close();
                                String str3 = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date());
                                SharedPreferences.Editor editorEdit2 = f26639a.edit();
                                editorEdit2.putString("epg_dl_time", str3);
                                editorEdit2.apply();
                                q0.q().f(0, "ORT_PROCESS_STATUS");
                                Log.d("XCIPTV_TAG", "XCDownloadXMLTV ---Finished");
                                d(context);
                            } else {
                                SharedPreferences.Editor editorEdit3 = f26639a.edit();
                                editorEdit3.putString("epg_file_size", "0");
                                editorEdit3.apply();
                            }
                            q0.q().f(0, "ORT_EPG_ERROR");
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                    }
                    responseExecute.close();
                } catch (Throwable th3) {
                    if (responseExecute == null) {
                        throw th3;
                    }
                    try {
                        responseExecute.close();
                        throw th3;
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                        throw th3;
                    }
                }
            } catch (IOException unused2) {
                c();
            }
        } catch (KeyManagementException | NoSuchAlgorithmException unused3) {
            c();
        }
    }

    public static void b(Context context) {
        if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
            executorServiceNewSingleThreadExecutor.execute(new RunnableC3002q(context, 5));
            executorServiceNewSingleThreadExecutor.shutdown();
        }
    }

    public static void c() {
        String str = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date());
        SharedPreferences.Editor editorEdit = f26639a.edit();
        editorEdit.putString("epg_dl_time", str);
        editorEdit.apply();
        q0.q().f(0, "ORT_PROCESS_STATUS");
        q0.q().f(1, "ORT_EPG_ERROR");
        Methods.B();
    }

    public static void d(Context context) {
        if (Methods.R(context)) {
            if (ORPlayerMainActivity.w(context)) {
                Log.d("XCIPTV_TAG", "XCUpdateContents JobScheduler is Running");
                return;
            }
            Log.d("XCIPTV_TAG", "XCUpdateContents JobScheduler is not Running");
            Log.d("XCIPTV_TAG", "XCUpdateContents startBackgroudTask");
            ORPlayerMainActivity.A(context);
            return;
        }
        if (CategoriesActivity.i(context)) {
            Log.d("XCIPTV_TAG", "XCUpdateContents JobScheduler is Running");
            return;
        }
        Log.d("XCIPTV_TAG", "XCUpdateContents JobScheduler is not Running");
        Log.d("XCIPTV_TAG", "XCUpdateContents startBackgroudTask");
        CategoriesActivity.l(context);
    }
}
