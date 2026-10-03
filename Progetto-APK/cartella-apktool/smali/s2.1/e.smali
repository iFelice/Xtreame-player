.class public final Ls2/e;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;I)V
    .locals 1

    .line 1
    iput p2, p0, Ls2/e;->G:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ls2/e;->H:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    goto :goto_1

    .line 26
    :catch_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :goto_1
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Ls2/e;->H:Ljava/net/HttpURLConnection;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget v0, p0, Ls2/e;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Ls2/e;->H:Ljava/net/HttpURLConnection;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
