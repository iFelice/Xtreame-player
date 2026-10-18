.class public final synthetic Lc4/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/C;
.implements Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;
.implements Lcom/google/protobuf/p1;
.implements Lcom/google/android/gms/internal/ads/nv;
.implements Lcom/google/android/gms/internal/ads/dC;
.implements Lg4/b;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc4/A;->G:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc4/A;->G:I

    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/protobuf/o1;
    .locals 0

    .line 1
    invoke-static {p1}, Lw4/N;->b(I)Lw4/N;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public collectSignals(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lg4/h;
    .locals 3

    .line 1
    new-instance v0, Lg4/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lg4/i;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, LK3/V;

    .line 13
    .line 14
    const/16 v2, 0x1a

    .line 15
    .line 16
    invoke-direct {v1, v0, p1, v2}, LK3/V;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Lg4/i;->a:Lg4/r;

    .line 23
    .line 24
    return-object p1
.end method

.method public then(Lg4/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lc4/A;->G:I

    packed-switch v0, :pswitch_data_0

    .line 2
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/y3;->H:Lcom/google/android/gms/internal/measurement/y3;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/y3;->G:Ly4/w;

    .line 5
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/A3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/A3;->b:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 9
    :pswitch_0
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->z:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_1
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->A:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 16
    :pswitch_2
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->c:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 19
    :pswitch_3
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->t:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_4
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->u:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_5
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->U:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_6
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->T:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_7
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->W:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 38
    :pswitch_8
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->g0:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 42
    :pswitch_9
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->Y:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 45
    :pswitch_a
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/B3;->H:Lcom/google/android/gms/internal/measurement/B3;

    .line 47
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/B3;->G:Ly4/w;

    .line 48
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 49
    check-cast v0, Lcom/google/android/gms/internal/measurement/C3;

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/measurement/D3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/measurement/D3;->a:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 52
    :pswitch_b
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->j:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 55
    :pswitch_c
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->t0:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 58
    :pswitch_d
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 59
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->B:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 61
    :pswitch_e
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->i:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 64
    :pswitch_f
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->X:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 67
    :pswitch_10
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->V:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 70
    :pswitch_11
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 71
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->Z:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 73
    :pswitch_12
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 74
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->n:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_13
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->v:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_14
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->f:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 84
    :pswitch_15
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 85
    sget-object v0, Lcom/google/android/gms/internal/measurement/B3;->H:Lcom/google/android/gms/internal/measurement/B3;

    .line 86
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/B3;->G:Ly4/w;

    .line 87
    iget-object v0, v0, Ly4/w;->G:Ljava/lang/Object;

    .line 88
    check-cast v0, Lcom/google/android/gms/internal/measurement/C3;

    .line 89
    check-cast v0, Lcom/google/android/gms/internal/measurement/D3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    sget-object v0, Lcom/google/android/gms/internal/measurement/D3;->b:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 91
    :pswitch_16
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->b0:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 94
    :pswitch_17
    sget-object v0, Lc4/E;->a:Ljava/util/List;

    .line 95
    sget-object v0, Lcom/google/android/gms/internal/measurement/s3;->H:Lcom/google/android/gms/internal/measurement/s3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s3;->a()Lcom/google/android/gms/internal/measurement/t3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    sget-object v0, Lcom/google/android/gms/internal/measurement/u3;->a0:Lcom/google/android/gms/internal/measurement/W1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/X1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/Object;)V
    .locals 2

    .line 97
    iget v0, p0, Lc4/A;->G:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    check-cast p1, Lcom/google/android/gms/internal/ads/fd;

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    .line 100
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    return-void

    .line 101
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    check-cast p1, Lcom/google/android/gms/internal/ads/fd;

    .line 102
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x4

    .line 103
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    return-void

    .line 104
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/td;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/td;->zzg()V

    return-void

    .line 105
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    check-cast p1, Lcom/google/android/gms/internal/ads/fd;

    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    .line 107
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    return-void

    .line 108
    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/ads/td;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/td;->b()V

    return-void

    .line 109
    :pswitch_5
    check-cast p1, Ly3/a;

    invoke-interface {p1}, Ly3/a;->i()V

    return-void

    .line 110
    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    check-cast p1, Lcom/google/android/gms/internal/ads/fd;

    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    return-void

    .line 113
    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/ads/xd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xd;->zzg()V

    return-void

    .line 114
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/ads/td;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/td;->a()V

    return-void

    .line 115
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    check-cast p1, Lcom/google/android/gms/internal/ads/fd;

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 117
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    return-void

    .line 118
    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/ads/td;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/td;->zzj()V

    return-void

    .line 119
    :pswitch_b
    check-cast p1, Lcom/google/android/gms/internal/ads/gd;

    check-cast p1, Lcom/google/android/gms/internal/ads/fd;

    .line 120
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    .line 121
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    return-void

    .line 122
    :pswitch_c
    check-cast p1, Ln3/m;

    invoke-interface {p1}, Ln3/m;->v0()V

    return-void

    .line 123
    :pswitch_d
    check-cast p1, Ln3/m;

    invoke-interface {p1}, Ln3/m;->k3()V

    return-void

    .line 124
    :pswitch_e
    check-cast p1, Lcom/google/android/gms/internal/ads/Oj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Oj;->zzg()V

    return-void

    .line 125
    :pswitch_f
    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/h6;->zzc()V

    return-void

    .line 126
    :pswitch_10
    invoke-static {p1}, Lcom/google/protobuf/U2;->u(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    .line 127
    :pswitch_11
    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/h6;->zzb()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 128
    const-string p1, "Notification of cache hit failed."

    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "Notification of cache hit successful."

    .line 4
    .line 5
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
