.class public final synthetic LB0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/t;
.implements Lp0/u;
.implements Lk6/a;
.implements LR2/d;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LB0/y;->G:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LC0/b;Ljava/lang/String;JJI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p7, p0, LB0/y;->G:I

    return-void
.end method

.method public static a(LK/k;)V
    .locals 2

    .line 1
    sget-object v0, Lpe/hf/black20/CategoriesActivity;->THEME:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, LK/k;->H:I

    .line 4
    .line 5
    iget-object p0, p0, LK/k;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ": "

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "XCIPTV_TAG"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LB0/y;->G:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, [B

    .line 7
    .line 8
    return-object p1

    .line 9
    :sswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 10
    .line 11
    sget-object p1, Ln6/b;->a:Ln6/b;

    .line 12
    .line 13
    return-object p1

    .line 14
    :sswitch_1
    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;->getCampaignId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, LB0/y;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0

    .line 12
    :pswitch_0
    sget-object v0, LU0/u;->b:Ly4/t;

    .line 13
    .line 14
    const-class v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_1
    const/16 v0, 0xc

    .line 18
    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    sget-object v1, LC0/C;->i:Ljava/util/Random;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_2
    new-instance v0, LB0/m;

    .line 34
    .line 35
    new-instance v2, LS0/d;

    .line 36
    .line 37
    invoke-direct {v2}, LS0/d;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v7, -0x1

    .line 41
    const/4 v8, 0x0

    .line 42
    const v3, 0xc350

    .line 43
    .line 44
    .line 45
    const v4, 0xc350

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x3e8

    .line 49
    .line 50
    const/16 v6, 0x7d0

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v8}, LB0/m;-><init>(LS0/d;IIIIIZ)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, LB0/y;->G:I

    .line 2
    .line 3
    check-cast p1, LC0/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
