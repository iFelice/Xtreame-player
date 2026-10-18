.class public final synthetic LB0/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LB0/F;->G:I

    .line 5
    .line 6
    iput p2, p0, LB0/F;->H:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lm0/W;

    .line 2
    .line 3
    iget v0, p0, LB0/F;->G:I

    .line 4
    .line 5
    iget v1, p0, LB0/F;->H:I

    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lm0/W;->G(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
