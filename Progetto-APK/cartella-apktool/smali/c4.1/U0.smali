.class public final Lc4/U0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc4/V0;


# direct methods
.method public synthetic constructor <init>(Lc4/V0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lc4/U0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lc4/U0;->H:Lc4/V0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lc4/U0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/U0;->H:Lc4/V0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, v1, Lc4/V0;->P:Lc4/S0;

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, v1, Lc4/V0;->P:Lc4/S0;

    .line 13
    .line 14
    iput-object v0, v1, Lc4/V0;->K:Lc4/S0;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
