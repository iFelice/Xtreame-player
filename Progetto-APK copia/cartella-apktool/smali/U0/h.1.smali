.class public final LU0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/P;


# instance fields
.field public final synthetic a:LK0/l;

.field public final synthetic b:I

.field public final synthetic c:LU0/k;


# direct methods
.method public constructor <init>(LU0/k;LK0/l;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LU0/h;->c:LU0/k;

    .line 5
    .line 6
    iput-object p2, p0, LU0/h;->a:LK0/l;

    .line 7
    .line 8
    iput p3, p0, LU0/h;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, LU0/h;->a:LK0/l;

    .line 2
    .line 3
    iget v1, p0, LU0/h;->b:I

    .line 4
    .line 5
    iget-object v2, p0, LU0/h;->c:LU0/k;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1, p1, p2}, LU0/k;->i0(LK0/l;IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final skip()V
    .locals 3

    .line 1
    iget-object v0, p0, LU0/h;->c:LU0/k;

    .line 2
    .line 3
    iget-object v1, p0, LU0/h;->a:LK0/l;

    .line 4
    .line 5
    iget v2, p0, LU0/h;->b:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, LU0/k;->m0(LK0/l;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
