.class public final Lr/b;
.super Lr/i;
.source "SourceFile"


# instance fields
.field public final synthetic J:I

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr/f;I)V
    .locals 1

    .line 1
    iput p2, p0, Lr/b;->J:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 2
    iput-object p1, p0, Lr/b;->K:Ljava/lang/Object;

    .line 3
    iget p1, p1, Lr/m;->I:I

    .line 4
    invoke-direct {p0, p1}, Lr/i;-><init>(I)V

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lr/b;->K:Ljava/lang/Object;

    .line 6
    iget p1, p1, Lr/m;->I:I

    .line 7
    invoke-direct {p0, p1}, Lr/i;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lr/g;)V
    .locals 1

    .line 8
    const/4 v0, 0x2

    iput v0, p0, Lr/b;->J:I

    .line 9
    iput-object p1, p0, Lr/b;->K:Ljava/lang/Object;

    .line 10
    iget p1, p1, Lr/g;->I:I

    .line 11
    invoke-direct {p0, p1}, Lr/i;-><init>(I)V

    return-void
.end method
