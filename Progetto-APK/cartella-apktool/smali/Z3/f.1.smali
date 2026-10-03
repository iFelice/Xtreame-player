.class public final LZ3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ3/W;


# instance fields
.field public final synthetic G:I

.field public final H:LZ3/X;


# direct methods
.method public constructor <init>(LC2/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, LZ3/f;->G:I

    .line 3
    iput-object p1, p0, LZ3/f;->H:LZ3/X;

    return-void
.end method

.method public synthetic constructor <init>(LO1/J;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LZ3/f;->G:I

    iput-object p1, p0, LZ3/f;->H:LZ3/X;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, LZ3/f;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LZ3/f;->H:LZ3/X;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Application;

    .line 13
    .line 14
    new-instance v1, LZ3/u;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    sget-object v0, LZ3/G;->b:LZ3/F;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->a0(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, LZ3/p;

    .line 26
    .line 27
    invoke-direct {v2, v1, v0}, LZ3/p;-><init>(LZ3/X;LZ3/F;)V

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :pswitch_1
    invoke-interface {v1}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/Application;

    .line 36
    .line 37
    new-instance v1, LZ3/i;

    .line 38
    .line 39
    invoke-direct {v1, v0}, LZ3/i;-><init>(Landroid/app/Application;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_2
    invoke-interface {v1}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/app/Application;

    .line 48
    .line 49
    new-instance v1, LZ3/e;

    .line 50
    .line 51
    invoke-direct {v1, v0}, LZ3/e;-><init>(Landroid/app/Application;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
