.class Lcom/airbnb/lottie/PerformanceTracker$1;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/PerformanceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/core/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/PerformanceTracker;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/PerformanceTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/PerformanceTracker$1;->this$0:Lcom/airbnb/lottie/PerformanceTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/core/util/Pair;

    check-cast p2, Landroidx/core/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/PerformanceTracker$1;->compare(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I

    move-result p1

    return p1
.end method
