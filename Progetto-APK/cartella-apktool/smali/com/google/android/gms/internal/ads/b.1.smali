.class public final synthetic Lcom/google/android/gms/internal/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Gz;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/b;->G:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/b;->G:I

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const/16 v0, 0xc

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/vL;->h:Ljava/util/Random;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/gK;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gK;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :pswitch_2
    return-object v0

    .line 40
    :pswitch_3
    sget v0, Lcom/google/android/gms/internal/ads/c;->a:I

    .line 41
    .line 42
    :try_start_0
    const-class v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    new-array v2, v1, [Ljava/lang/Class;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-array v3, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "build"

    .line 58
    .line 59
    new-array v4, v1, [Ljava/lang/Class;

    .line 60
    .line 61
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/ads/Ug;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .line 76
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
