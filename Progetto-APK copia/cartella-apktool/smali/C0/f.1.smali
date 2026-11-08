.class public final synthetic LC0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lm0/Q;


# direct methods
.method public synthetic constructor <init>(LC0/b;LB0/w;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LC0/f;->G:I

    .line 5
    .line 6
    iput-object p2, p0, LC0/f;->H:Lm0/Q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, LC0/f;->G:I

    .line 2
    .line 3
    check-cast p1, LC0/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, LC0/F;

    .line 9
    .line 10
    iget-object v0, p0, LC0/f;->H:Lm0/Q;

    .line 11
    .line 12
    iput-object v0, p1, LC0/F;->o:Lm0/Q;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
