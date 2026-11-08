package b7;

import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import okhttp3.HttpUrl;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class J1 extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SplashActivity f10093b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ J1(SplashActivity splashActivity) {
        this(splashActivity, 0);
        this.f10092a = 0;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) throws Throwable {
        int i8 = this.f10092a;
        SplashActivity splashActivity = this.f10093b;
        switch (i8) {
            case 0:
                try {
                    URL url = new URL(Encrypt.a(splashActivity.f29178J.f25482e));
                    URLConnection uRLConnectionOpenConnection = url.openConnection();
                    uRLConnectionOpenConnection.connect();
                    int contentLength = uRLConnectionOpenConnection.getContentLength();
                    InputStream inputStreamOpenStream = url.openStream();
                    File file = new File(String.valueOf(splashActivity.getFilesDir()));
                    if (!file.exists()) {
                        file.mkdir();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file + "/tv_m3u.txt");
                    byte[] bArr = new byte[1024];
                    long j8 = 0;
                    int i9 = 0;
                    while (true) {
                        int i10 = inputStreamOpenStream.read(bArr);
                        if (i10 == -1) {
                            inputStreamOpenStream.close();
                            fileOutputStream.close();
                        } else {
                            j8 += (long) i10;
                            int i11 = (((int) j8) * 100) / contentLength;
                            if (i11 % 10 == 0 && i9 != i11) {
                                i9 = i11;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                    }
                } catch (FileNotFoundException unused) {
                    splashActivity.f29196b0 = true;
                    Methods.B();
                } catch (MalformedURLException unused2) {
                    splashActivity.f29196b0 = true;
                    Methods.B();
                } catch (IOException unused3) {
                    splashActivity.f29196b0 = true;
                    Methods.B();
                }
                break;
            default:
                String str = splashActivity.f29191W;
                String str2 = splashActivity.f29192X;
                StringBuilder sb = new StringBuilder();
                p148t.a.h(sb, splashActivity.f29193Y, "/token/createtoken?userid=", str, "&password=");
                sb.append(str2);
                String strE = new F2.G(5).E(sb.toString());
                if (strE != null) {
                    splashActivity.f29195a0 = strE.replaceAll("token=", HttpUrl.FRAGMENT_ENCODE_SET);
                } else {
                    splashActivity.f29195a0 = "-2";
                }
                break;
        }
        return null;
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) throws Throwable {
        int i8 = this.f10092a;
        SplashActivity splashActivity = this.f10093b;
        switch (i8) {
            case 0:
                super.onPostExecute((Void) obj);
                if (!splashActivity.f29196b0) {
                    splashActivity.d();
                } else {
                    splashActivity.l();
                }
                break;
            default:
                super.onPostExecute((String) obj);
                if (splashActivity.f29195a0.length() <= 3) {
                    splashActivity.l();
                } else {
                    Log.d("XCIPTV_TAG", "SplashActivity - LOGIN Success ------------------------------" + splashActivity.f29195a0);
                    splashActivity.f29177I.O(z4.q0.q().c("ORT_PROFILE", "Default (XC)"), Encrypt.b(splashActivity.f29191W), Encrypt.b(splashActivity.f29192X), Encrypt.b(splashActivity.f29193Y));
                    SharedPreferences sharedPreferences = splashActivity.f29175G.getSharedPreferences("pe.hf.black20", 0);
                    splashActivity.f29176H = sharedPreferences;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("token", Encrypt.b(splashActivity.f29195a0));
                    editorEdit.apply();
                    editorEdit.commit();
                    splashActivity.d();
                }
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        switch (this.f10092a) {
            case 0:
                super.onPreExecute();
                break;
            default:
                super.onPreExecute();
                SplashActivity splashActivity = this.f10093b;
                if (splashActivity.f29203i0 == 1) {
                    splashActivity.f29193Y = Encrypt.a(splashActivity.f29178J.f25482e);
                    splashActivity.f29191W = Encrypt.a(splashActivity.f29178J.f25480c);
                    splashActivity.f29192X = Encrypt.a(splashActivity.f29178J.f25481d);
                }
                break;
        }
    }

    public /* synthetic */ J1(SplashActivity splashActivity, int i8) {
        this.f10092a = i8;
        this.f10093b = splashActivity;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ J1(SplashActivity splashActivity, Object obj) {
        this(splashActivity, 1);
        this.f10092a = 1;
    }
}
