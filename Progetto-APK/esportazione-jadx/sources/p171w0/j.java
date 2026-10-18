package p171w0;

import android.app.Activity;
import android.net.Uri;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.internal.cast.X;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import k7.b;
import p120p3.k;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.epg.EPGActivityXMLTV;
import y2.ThreadFactoryC3229a;

/* JADX INFO: loaded from: classes.dex */
public final class j extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30910G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f30911H;

    public /* synthetic */ j(int i8, Object obj) {
        this.f30910G = i8;
        this.f30911H = obj;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        switch (this.f30910G) {
            case 0:
                k.access$000((k) this.f30911H);
                return;
            case 1:
                Process.setThreadPriority(9);
                super.run();
                return;
            case 2:
                Map map = (Map) this.f30911H;
                Uri.Builder builderBuildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
                for (String str : map.keySet()) {
                    builderBuildUpon.appendQueryParameter(str, (String) map.get(str));
                }
                String string = builderBuildUpon.build().toString();
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
                    try {
                        int responseCode = httpURLConnection.getResponseCode();
                        if (responseCode < 200 || responseCode >= 300) {
                            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 65);
                            sb.append("Received non-success response code ");
                            sb.append(responseCode);
                            sb.append(" from pinging URL: ");
                            sb.append(string);
                            Log.w("HttpUrlPinger", sb.toString());
                            break;
                        }
                        return;
                    } finally {
                        httpURLConnection.disconnect();
                    }
                } catch (IOException e8) {
                    e = e8;
                    String message = e.getMessage();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(message).length() + String.valueOf(string).length() + 27);
                    sb2.append("Error while pinging URL: ");
                    sb2.append(string);
                    sb2.append(". ");
                    sb2.append(message);
                    Log.w("HttpUrlPinger", sb2.toString(), e);
                    return;
                } catch (IndexOutOfBoundsException e9) {
                    String message2 = e9.getMessage();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(message2).length() + String.valueOf(string).length() + 32);
                    sb3.append("Error while parsing ping URL: ");
                    sb3.append(string);
                    sb3.append(". ");
                    sb3.append(message2);
                    Log.w("HttpUrlPinger", sb3.toString(), e9);
                    return;
                } catch (RuntimeException e10) {
                    e = e10;
                    String message3 = e.getMessage();
                    StringBuilder sb4 = new StringBuilder(String.valueOf(message3).length() + String.valueOf(string).length() + 27);
                    sb4.append("Error while pinging URL: ");
                    sb4.append(string);
                    sb4.append(". ");
                    sb4.append(message3);
                    Log.w("HttpUrlPinger", sb4.toString(), e);
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            case 3:
                new k(null).c((String) this.f30911H);
                return;
            case 4:
                while (!isInterrupted()) {
                    try {
                        Thread.sleep(1000L);
                        ((CategoriesActivity) this.f30911H).runOnUiThread(new X(this, 13));
                    } catch (InterruptedException unused) {
                        return;
                    }
                }
                return;
            case 5:
                while (!isInterrupted()) {
                    try {
                        Thread.sleep(1000L);
                        ((ChannelListActivity) this.f30911H).runOnUiThread(new X(this, 15));
                    } catch (InterruptedException unused2) {
                        return;
                    }
                }
                return;
            case 6:
                while (!isInterrupted()) {
                    try {
                        Thread.sleep(1000L);
                        ((EPGActivityXMLTV) this.f30911H).runOnUiThread(new X(this, 26));
                    } catch (InterruptedException unused3) {
                        return;
                    }
                }
                return;
            default:
                byte[] bArr = new byte[153600];
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (true) {
                    try {
                        HttpURLConnection httpURLConnection2 = (HttpURLConnection) ((URL) this.f30911H).openConnection();
                        httpURLConnection2.setDoOutput(true);
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setRequestProperty("Connection", "Keep-Alive");
                        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                        dataOutputStream.write(bArr, 0, 153600);
                        dataOutputStream.flush();
                        httpURLConnection2.getResponseCode();
                        b.f26024K = (int) ((((double) 153600) / 1024.0d) + ((double) b.f26024K));
                        if ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d >= 10) {
                            return;
                        }
                        dataOutputStream.close();
                        httpURLConnection2.disconnect();
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                break;
        }
    }

    public /* synthetic */ j(Activity activity, int i8) {
        this.f30910G = i8;
        this.f30911H = activity;
    }

    public j(URL url) {
        this.f30910G = 7;
        this.f30911H = url;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k kVar) {
        super("ExoPlayer:SimpleDecoder");
        this.f30910G = 0;
        this.f30911H = kVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(ThreadFactoryC3229a threadFactoryC3229a, Runnable runnable) {
        super(runnable);
        this.f30910G = 1;
        this.f30911H = threadFactoryC3229a;
    }
}
