.class public Lio/antmedia/rtmp_client/RtmpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "rtmp-jni"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private native nativeAlloc()J
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeOpen(Ljava/lang/String;ZJII)I
.end method

.method private native nativeRead([BIIJ)I
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/antmedia/rtmp_client/RtmpClient;->a:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lio/antmedia/rtmp_client/RtmpClient;->nativeClose(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lio/antmedia/rtmp_client/RtmpClient;->a:J

    .line 9
    .line 10
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lio/antmedia/rtmp_client/RtmpClient;->nativeAlloc()J

    .line 2
    .line 3
    .line 4
    move-result-wide v3

    .line 5
    iput-wide v3, p0, Lio/antmedia/rtmp_client/RtmpClient;->a:J

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    const-wide/16 v8, 0x0

    .line 9
    .line 10
    cmp-long v0, v3, v8

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/16 v5, 0x2710

    .line 15
    .line 16
    const/16 v6, 0x2710

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    invoke-direct/range {v0 .. v6}, Lio/antmedia/rtmp_client/RtmpClient;->nativeOpen(Ljava/lang/String;ZJII)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput-wide v8, p0, Lio/antmedia/rtmp_client/RtmpClient;->a:J

    .line 29
    .line 30
    new-instance v0, Lw2/d;

    .line 31
    .line 32
    invoke-direct {v0, p1, v7}, Lw2/d;-><init>(II)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    new-instance p1, Lw2/d;

    .line 37
    .line 38
    const/4 v0, -0x2

    .line 39
    invoke-direct {p1, v0, v7}, Lw2/d;-><init>(II)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final c([BII)I
    .locals 6

    .line 1
    iget-wide v4, p0, Lio/antmedia/rtmp_client/RtmpClient;->a:J

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lio/antmedia/rtmp_client/RtmpClient;->nativeRead([BIIJ)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-gez p1, :cond_1

    .line 12
    .line 13
    const/4 p2, -0x1

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p2, Lw2/d;

    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    invoke-direct {p2, p1, p3}, Lw2/d;-><init>(II)V

    .line 21
    .line 22
    .line 23
    throw p2

    .line 24
    :cond_1
    :goto_0
    return p1
.end method
