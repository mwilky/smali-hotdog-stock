.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    iput v1, v0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    return-void
.end method