.class Lcom/oneplus/settings/OPScreenResolutionAdjust$3;
.super Ljava/lang/Object;
.source "OPScreenResolutionAdjust.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPScreenResolutionAdjust;->delayRefreshUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    invoke-static {v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->access$100(Lcom/oneplus/settings/OPScreenResolutionAdjust;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    invoke-static {v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->access$200(Lcom/oneplus/settings/OPScreenResolutionAdjust;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    return-void
.end method
